import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:color_funland/core/constants/model.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/child_progress_scareen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SampleScreenWidget extends StatelessWidget {
  final List<GridItem> items;
  final String title;

  final int crossAxisCount;
  final List<String> pageGroup;
  final bool insidecategory;
  final bool insideanimals;
  final double? gridHeight;
  final double childAspectRatio;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  const SampleScreenWidget({
    super.key,
    required this.items,
    required this.crossAxisCount,
    required this.insidecategory,
    required this.pageGroup,
    required this.insideanimals,
    this.gridHeight,
    this.childAspectRatio = 1.0,
    this.crossAxisSpacing = 0.0,
    this.mainAxisSpacing = 0.0,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        insideanimals == true
            ? Text(
                title,
                textAlign: TextAlign.center,
                style: ts64Magic400,
              )
            : Container(),
        SizedBox(
          height: gridHeight ?? 499.h,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: childAspectRatio,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => _buildPaintingItem(
              index: index,
              item: GridItem(
                title: items[index].title,
                imageUrl: items[index].imageUrl,
                onTap: () {
                  Navigator.of(context).pushNamed(pageGroup[index]);
                },
              ),
            ),
            itemCount: items.length,
          ),
        ),
      ],
    );
  }

  Widget _buildPaintingItem({
    required GridItem item,
    required int index,
  }) {
    return InkWell(
      highlightColor: Colors.transparent, // Disable highlight effect
      splashColor: Colors.transparent, // Disable splash effect
      onTap: item.onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Image.asset(
                item.imageUrl,
                width: 222.w,
                height: 211.62.h,
                fit: BoxFit.contain,
              ),
              index > PaintingProgress.lockedIndex
                  ? Image.asset(
                      AppImages.locked,
                      width: 66.w,
                      height: 66.h,
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
