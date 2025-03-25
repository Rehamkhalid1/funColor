import 'package:color_funland/core/components/app_bar_row.dart';
import 'package:color_funland/core/components/learning_colors_btm_nav_bar.dart';
import 'package:color_funland/core/constants/app_icons.dart';
import 'package:color_funland/core/constants/app_images.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RedGreenBlueLesson extends StatefulWidget {
  const RedGreenBlueLesson({
    super.key,
    required this.images,
    required this.lessonImage,
  });
  final List<String> images;
  final String lessonImage;

  @override
  State<RedGreenBlueLesson> createState() => _RedGreenBlueLessonState();
}

class _RedGreenBlueLessonState extends State<RedGreenBlueLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarRow(
        gameGroup: "Learning Colors",
        inSideGame: true,
        appBarIcon: AppIcons.learningcolors,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 49.w),
        child: Center(
          child: SizedBox(
            height: 421.h,
            child: Row(
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      widget.lessonImage,
                      height: 351.h,
                      width: 366.w,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: SvgPicture.asset(
                        AppImages.playsongbtn,
                        height: 59.h,
                        width: 224.w,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 50.w,right: 50.w, top: 50.h),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: .80 / .60,
                        mainAxisSpacing: 10.h,
                        crossAxisSpacing: 0.w
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => buildItem(
                        image: widget.images[index],
                        onTap: () {},
                      ),
                      itemCount: widget.images.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: LearningColorsBtmNavBar(
        onBackPressed: () {
          Navigator.pop(context);
        },
        onNextPressed: () {},
      ),
    );
  }
}

Widget buildItem({required String image, required void Function()? onTap}) {
  return InkWell(
          highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    onTap: onTap,
    child: Image.asset(
      image,
      height: 200.h,
      width: 220.w,
      fit: BoxFit.contain,
    ),
  );
}
