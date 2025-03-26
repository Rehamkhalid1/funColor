import 'package:color_funland/core/components/animated_container_widget.dart';
import 'package:color_funland/core/components/app_bar_row.dart';
import 'package:color_funland/core/components/three_items_bottom_navigation.dart';
import 'package:color_funland/core/constants/app_icons.dart';
import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:color_funland/features/my_painting/widgets/paint_state.dart';
import 'package:color_funland/features/my_painting/widgets/svg_canvas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:palette_generator/palette_generator.dart';

class ColorMatchNumbers extends StatefulWidget {
  const ColorMatchNumbers({super.key});

  @override
  _ColorMatchNumbersState createState() => _ColorMatchNumbersState();
}

class _ColorMatchNumbersState extends State<ColorMatchNumbers> {
  final GlobalKey<AnimatedContainerState> _containerKey = GlobalKey();
  Color _selectedColor = Colors.black;
  String? _selectedImagePath; // Stores the path of the selected image


 VectorImage? _vectorImage;
  VectorImage? _coloredVectorImage;

  final PaintState _paintState = PaintState();

  bool isPaintingComplete = false;

  bool isPaintingCorrect = false;



  void _checkPaintingCompletion(List<PathSvgItem> paintedRegions,bool isCorrect) {
    setState(() {
      isPaintingComplete =
          paintedRegions.every((region) => region.fill != Colors.transparent);
      isPaintingCorrect =isCorrect; // Check correctness
    });
  }

  @override
  void initState() {
    super.initState();
    _loadSvg();
  }

  // Load and parse the SVG file
  Future<void> _loadSvg() async {
    final String uncoloredSvgData =
        await rootBundle.loadString('assets/images/color_match_images/Flowerbox.svg');
    final String coloredSvgData =
        await rootBundle.loadString(AppImages.elephantcolored);

    setState(() {
      _vectorImage = parseSvg(uncoloredSvgData);
      _coloredVectorImage = parseSvg(coloredSvgData);
    });
  }



  // Method to reset the SVG image
  void _resetSvg() async {
    final String svgData =
        await rootBundle.loadString('assets/images/color_match_images/Flowerbox.svg');
    setState(() {
      _vectorImage = parseSvg(svgData); // Reload the original SVG
    });
  }

  // Get dominant color from image asset
  Future<Color> _getDominantColor(String imagePath) async {
    final imageProvider = AssetImage(imagePath);
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      imageProvider,
      size: Size(150.w, 150.h),
    );
    return paletteGenerator.dominantColor?.color ?? Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarRow(
        gameGroup: "Color Match",
        inSideGame: true,
        appBarIcon: AppIcons.colorMatchIcon,
        containerKey: _containerKey,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 46.w, right: 52.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: _resetSvg,
                        child: SvgPicture.asset(
                          AppIcons.reset,
                          width: 60.w,
                          height: 60.h,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width*.33,
                      ),
                      Text(
                        'Flowers',
                        style: ts64Magic400,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  numberImage(AppImages.number1colormatch),
                                  numberImage(AppImages.number2colormatch),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  numberImage(AppImages.number3colormatch),
                                  numberImage(AppImages.number4colormatch),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: Center(
                              child: _vectorImage != null
                                  ? SvgCanvas(
                                      vectorImage: _vectorImage!,
                                      selectedColor: _selectedColor,
                                      onPaintUpdate: _checkPaintingCompletion,
                                    coloredVectorImage:  _coloredVectorImage!,
                                      scaleFactor: 1.10,
                                    )
                                  : const CircularProgressIndicator(), // Show a loading indicator until SVG is loaded
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  numberImage(AppImages.number5colormatch),
                                  numberImage(AppImages.number6colormatch),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  numberImage(AppImages.number7colormatch),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainerWidget(key: _containerKey),
          ],
        ),
      ),
      bottomNavigationBar: ThreeItemsBottomNavigation(
        insideGame: true,
        onBackPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  Widget numberImage(String path) {
    return GestureDetector(
      onTap: () async {
        final color = await _getDominantColor(path);
        setState(() {
          _selectedColor = color;
          _paintState.setColor(color);
          _selectedImagePath = path;
        });
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color:
                _selectedImagePath == path ? Colors.blue : Colors.transparent,
            width: 3,
          ),
        ),
        child: Image.asset(
          path,
          height: 150.h,
          width: 150.w,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
