import 'package:color_funland/core/components/animated_container_widget.dart';
import 'package:color_funland/core/constants/app_icons.dart';
import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/components/app_bar_row.dart';
import 'package:color_funland/core/components/three_items_bottom_navigation.dart';
import 'package:color_funland/core/constants/model.dart';
import 'package:color_funland/features/my_painting/widgets/my_painting_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyPaintingScreen extends StatefulWidget {
  const MyPaintingScreen({super.key});

  @override
  State<MyPaintingScreen> createState() => _MyPaintingScreenState();
}

class _MyPaintingScreenState extends State<MyPaintingScreen> {
  final GlobalKey<AnimatedContainerState> _containerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBarRow(
          gameGroup: "Paintings",
          inSideGame: true,
          appBarIcon: AppIcons.paintingsIcon,
          containerKey: _containerKey,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 45.w, right: 51.w,top: 8.7.h),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.paintingGirl,
                      height: 358.65.h,
                      width: 313.29.w,
                    ),
                    SizedBox(
                      width: 32.w,
                    ),
                    Flexible(
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: 95.5.h),
                            child: Image.asset(
                              AppImages.myPaintingCardBg,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height:MediaQuery.of(context).size.height,
                            child: PaintingScreenWidget(
                              items: gridItems,
                              crossAxisCount: 4,
                              pageGroup: myPaintingSamplesScreen,
                              insidecategory: true,
                              insideanimals: false,
                              childAspectRatio: 1 / 1.20,
                            ),
                          ),
                        ],
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
        ),
      ),
    );
  }
}
