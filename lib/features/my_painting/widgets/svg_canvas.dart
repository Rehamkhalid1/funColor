// Import necessary packages
import 'package:flutter/material.dart';
import 'package:xml/xml.dart';
import 'package:path_drawing/path_drawing.dart';

// Model classes for SVG representation
class VectorImage {
  final List<PathSvgItem> items;
  final Size? size;

  VectorImage({required this.items, this.size});
}

class PathSvgItem {
  final Path path;
  Color fill;
  final Color originalColor; // Store correct color from colored SVG

  PathSvgItem(
      {required this.path, required this.fill, required this.originalColor});
}

// Painter class for rendering SVG paths
class SvgPainter extends CustomPainter {
  final List<PathSvgItem> items;
  final double scaleFactor;

  SvgPainter(this.items, {this.scaleFactor = 1.10});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();

    // Move canvas to center before scaling
    canvas.translate(size.width / 2, size.height / 2);
    canvas.scale(scaleFactor);
    canvas.translate(-size.width / 2, -size.height / 2);

    for (var item in items) {
      // // 1. Draw the shape with a solid black border
      // final solidBorderPaint = Paint()
      //   ..color = Colors.black
      //   ..style = PaintingStyle.fill; // Fill with black to create a solid border

      // canvas.drawPath(item.path, solidBorderPaint);

      // 3. Draw the filled shape **on top of the border**
      final fillPaint = Paint()
        ..color = item.fill
        ..style = PaintingStyle.fill;

      canvas.drawPath(item.path, fillPaint);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(SvgPainter oldDelegate) => true;
}

// Function to parse SVG file data
VectorImage parseSvg(String svgData) {
  final document = XmlDocument.parse(svgData);
  List<PathSvgItem> items = [];
  Size? size;

  final svgElement = document.findAllElements('svg').first;
  String? viewBox = svgElement.getAttribute('viewBox');

  if (viewBox != null) {
    final parts = viewBox.split(' ');
    size = Size(double.parse(parts[2]), double.parse(parts[3]));
  }

  for (var element in document.findAllElements('path')) {
    final String? pathData = element.getAttribute('d');
    if (pathData == null) continue;
    Path path = parseSvgPathData(pathData);

    String? fillColor = element.getAttribute('fill');
    Color color = Colors.transparent; // Default color
    if (fillColor != null &&
        fillColor.startsWith("#") &&
        fillColor.length == 7) {
      color = Color(int.parse('0xff${fillColor.substring(1)}'));
    }

  items.add(PathSvgItem(path: path, fill: color, originalColor: color));

  }

  return VectorImage(items: items, size: size);
}

// Widget to display the SVG and handle painting
class SvgCanvas extends StatefulWidget {
  final VectorImage vectorImage;
  final VectorImage coloredVectorImage; // Add this
  final Color? selectedColor;
  final double scaleFactor;
  final void Function(List<PathSvgItem>,bool)? onPaintUpdate; // Callback to notify painting updates

  const SvgCanvas({
    super.key,
    required this.vectorImage,
    this.selectedColor,
    this.scaleFactor = 1.10, // Default scale factor
    this.onPaintUpdate,
    required this.coloredVectorImage,
  });

  @override
  State<SvgCanvas> createState() => _SvgCanvasState();
}

class _SvgCanvasState extends State<SvgCanvas> {
 void _onTap(Offset position) {
  for (var item in widget.vectorImage.items) {
    if (item.path.contains(position)) {
      setState(() {
        item.fill = widget.selectedColor ?? item.fill; // Keep original color if no color selected
      });

      // Compute correctness
      bool isCorrect = _isPaintingCorrect(widget.vectorImage.items);

      // Notify parent widget
      widget.onPaintUpdate?.call(widget.vectorImage.items, isCorrect);
      break;
    }
  }
}


    bool _isPaintingCorrect(List<PathSvgItem> paintedRegions) {
    int correctlyPainted = 0;
    int totalRegions = paintedRegions.length;

    for (int i = 0; i < totalRegions; i++) {
      if (paintedRegions[i].fill ==
          widget.coloredVectorImage.items[i].originalColor) {
        correctlyPainted++;
      }
    }

    double accuracy = (correctlyPainted / totalRegions) * 100;
    return accuracy >= 85.0; // Require at least 85% accuracy
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: (widget.vectorImage.size?.width ?? 300) *
            widget.scaleFactor, // Increased space
        height: (widget.vectorImage.size?.height ?? 300) * widget.scaleFactor,
        child: GestureDetector(
          onTapUp: (details) => _onTap(details.localPosition),
          child: CustomPaint(
            painter: SvgPainter(widget.vectorImage.items,
                scaleFactor: widget.scaleFactor),
          ),
        ),
      ),
    );
  }
}
