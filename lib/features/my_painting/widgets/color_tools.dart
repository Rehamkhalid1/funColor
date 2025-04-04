import 'package:color_funland/core/components/gradient_box_border.dart';
import 'package:color_funland/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorTools extends StatefulWidget {
  final Function(Color) onColorSelected;
  final Color selectedColor;
  final Function(double)? onStrokeWidthChanged;
  final double strokeWidth;
  final List<Color> paletteColors;
  final Color activeTrackColor;

  const ColorTools({
    super.key,
    required this.onColorSelected,
    required this.selectedColor,
    this.onStrokeWidthChanged,
    this.strokeWidth = 15.0,
    required this.paletteColors,
    required this.activeTrackColor,
  });

  @override
  State<ColorTools> createState() => _ColorToolsState();
}

class _ColorToolsState extends State<ColorTools> {
 // late double _currentStrokeWidth;

  @override
  void initState() {
    super.initState();
    //_currentStrokeWidth = widget.strokeWidth;
  }

  @override
  Widget build(BuildContext context) {
    // Split colors into two columns
    final int midPoint = (widget.paletteColors.length / 2).ceil();
    final leftColors = widget.paletteColors.sublist(0, midPoint);
    final rightColors = widget.paletteColors.sublist(midPoint);

    return Container(
      width: 265.w,
      height: 395.h,
      decoration: BoxDecoration(
        color: const Color(0xFF2A0B4F),
        borderRadius: BorderRadius.circular(32.r),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [AppColors.borderColor, AppColors.borderColor2],
          ),
          width: 12.w,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Two columns of colors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: leftColors
                          .map((color) => _buildColorButton(color))
                          .toList(),
                    ),
                  ),
                ),
                //  Right column
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: rightColors
                          .map((color) => _buildColorButton(color))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColorButton(Color color) {
    final isSelected = widget.selectedColor == color;
    return Container(
      width: 89,
      height: 89,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: GestureDetector(
        onTap: () => widget.onColorSelected(color),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? Colors.white : Colors.transparent,
              width: 3,
            ),
            boxShadow: [
              if (isSelected)
                BoxShadow(
                  color: color.withOpacity(0.5),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
