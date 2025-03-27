import 'dart:ui';

import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/constants/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridItem {
  final String? title;
  final String imageUrl;
  final VoidCallback? onTap;
  final double? imgWidth;
  final double? imgHeight;
  final bool? isSvg;

  GridItem({
    this.title = "",
    required this.imageUrl,
    this.onTap,
    this.imgWidth,
    this.imgHeight,
    this.isSvg = false,
  });
}

final List<String> myPaintingSamplesScreen = [
  '/animalsSamplesScreen',
  '/fishesSamplesScreen',
  '/flowersSamplesScreen',
];

final List<GridItem> gridItems = [
  GridItem(
    title: AppStrings.animals,
    imageUrl: AppImages.animals,
    imgWidth: 180.w,
  ),
  GridItem(
    title: AppStrings.fishes,
    imageUrl: AppImages.fishes,
    imgWidth: 180.w,
  ),
  GridItem(
    title: AppStrings.flowers,
    imageUrl: AppImages.flowers,
    imgWidth: 180.w,
  ),
  GridItem(
    title: AppStrings.vehicles,
    imageUrl: AppImages.vehicles,
    imgWidth: 180.w,
  ),
  GridItem(
    title: AppStrings.dinosaur,
    imageUrl: AppImages.dinasour,
    imgWidth: 180.w,
  ),
  GridItem(
    title: AppStrings.characters,
    imageUrl: AppImages.characters,
    imgWidth: 180.w,
  ),
  GridItem(
    title: AppStrings.places,
    imageUrl: AppImages.places,
    imgWidth: 180.w,
  ),
  GridItem(
    title: AppStrings.paintMyNumbers,
    imageUrl: AppImages.paintByNumbers,
    imgWidth: 180.w,
  ),
];

///*************   Animals Section  ************** */

final List<String> animalsPaintingScreen = [
  '/monkeyColor',
  '/elephantColor',
  '/giraffeColor',
  '/catColor',
  '/lionColor',
];

final List<GridItem> animalsFram = [
  GridItem(
    imageUrl: AppImages.duckFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.elephantFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.catFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.girafeFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.lionFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.tigerFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.turtleFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.beeFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.lionBabyFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
  GridItem(
    imageUrl: AppImages.kangarooFram,
    imgWidth: 193.93.w,
    imgHeight: 186.47.h,
  ),
];

///*************   Fishes Section  ************** */

final List<String> fishesPaintingScreen = [
  '/dolphinColor',
  '/octupusColor',
  '/fishColor',
  '/pufferfishColor',
  '/seahorseColor',
];

final List<GridItem> fishesFram = [
  GridItem(
    imageUrl: AppImages.dolphinFram,
  ),
  GridItem(
    imageUrl: AppImages.octopusFram,
  ),
  GridItem(
    imageUrl: AppImages.fishFram,
  ),
  GridItem(
    imageUrl: AppImages.pufferfishFram,
  ),
  GridItem(
    imageUrl: AppImages.seahorseFram,
  ),
  GridItem(
    imageUrl: AppImages.fishFram2,
  ),
  GridItem(
    imageUrl: AppImages.sharkFram,
  ),
  GridItem(
    imageUrl: AppImages.fishFram3,
  ),
  GridItem(
    imageUrl: AppImages.crabFram,
  ),
  GridItem(
    imageUrl: AppImages.smilefishFram,
  ),
];

///*************   Flowers Section  ************** */

final List<String> flowersPaintingScreen = [
  '/flowerColor1',
  '/flowerColor2',
  '/flowerColor3',
  '/flowerColor4',
  '/flowerColor5',
];

final List<GridItem> flowersFram = [
  GridItem(
    imageUrl: AppImages.flowerFram1,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram2,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram3,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram4,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram5,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram6,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram7,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram8,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram9,
  ),
  GridItem(
    imageUrl: AppImages.flowerFram10,
  ),
];

///****************** Color Mixing Screen **************/
final List<GridItem> colorMixingItem = [
  GridItem(imageUrl: AppImages.number1, imgHeight: 223.56.h, imgWidth: 264.w),
  GridItem(imageUrl: AppImages.number2, imgHeight: 223.56.h, imgWidth: 264.w),
  GridItem(imageUrl: AppImages.number3, imgHeight: 223.56.h, imgWidth: 264.w),
];

final List<String> colorMixingSamples = [
  '/colorMixingSampls',
  '/colorMixingSampls2',
  '/colorMixingSampls3',
];

List<String> imageSample1 = [
  AppImages.colorPurple,
  AppImages.colorRed,
  AppImages.colorYellow,
];
List<String> imageSample2 = [
  AppImages.colordarkpurple,
  AppImages.colorGreen,
  AppImages.colorOrange,
];
List<String> imageSample3 = [
  AppImages.colorRed,
  AppImages.colorGreen,
  AppImages.colorPurple,
  AppImages.colorOrange,
  AppImages.colorBrown,
  AppImages.colordarkgreen,
];

///****************** Color match Screen **************/

final List<GridItem> colorMatchItem = [
  GridItem(
      // title:"Shapes",
      imageUrl: AppImages.colorMatchShapes,
      imgWidth: 264.w,
      imgHeight: 392.h),
  GridItem(
    // title: "Food",
    imageUrl: AppImages.colorMatchFoods,
    imgWidth: 264.w,
    imgHeight: 392.h,
  ),
  GridItem(
    // title: "Animals",
    imageUrl: AppImages.colorMatchAnimals,
    imgWidth: 264.w,
    imgHeight: 392.h,
  ),
  GridItem(
    // title: "Numbers",
    imageUrl: AppImages.colorMatchNumbers,
    imgWidth: 264.w,
    imgHeight: 392.h,
  ),
];
final List<String> colorMatchSamplesScreens = [
  '/colorMatchShapes',
  '/colorMatchFoods',
  "/colorMatchAnimals",
  "/colorMatchNumbers",
];

///****************** Learning Colors Screen **************/
final List<GridItem> learningColorsItem = [
  GridItem(
    imageUrl: AppImages.lesson1,
    imgHeight: 416.h,
  ),
  GridItem(
    imageUrl: AppImages.lesson2,
    imgHeight: 416.h,
  ),
  GridItem(
    imageUrl: AppImages.lesson3,
    imgHeight: 416.h,
  ),
];


final List<String> learningColorsLessons = [
  '/learningColorslesson1',
  '/learningColorslesson2',
  '/learningColorslesson3',
];


///************************************** lesson 1 *********************************/

List<String> lesson1Images = [
  AppImages.lessonredpalette,
  AppImages.lessongreenpalette,
  AppImages.lessonbluepallete,
];


List<String> redLessonImages = [
  AppImages.lesson1apple,
  AppImages.lesson1turtle,
  AppImages.lesson1Strawberry,
  AppImages.lesson1aunt,
  AppImages.lesson1fish,
  AppImages.lesson1pepper,

];

List<String> greenLessonImages = [
  AppImages.lesson1bird,
  AppImages.lesson1potato,
  AppImages.lesson1union,
  AppImages.lesson1banana,
  AppImages.lesson1vegetable,
  AppImages.lesson1crocodile,

];

List<String> blueLessonImages = [
  AppImages.lesson1frog,
  AppImages.lesson1bluebird,
  AppImages.lesson1grapes,
  AppImages.lesson1whole,
  AppImages.lesson1fish,
  AppImages.lesson1lake,

];


  final Map<String, List<String>> blueImagesGroub = {
     AppImages.bluelesson: [
      AppImages.lesson1bluebird,
      AppImages.lesson1whole,
      AppImages.lesson1lake
    ],
  };

 final Map<String, List<String>> redImagesGroub = {
    AppImages.redlesson: [
      AppImages.lesson1apple,
      AppImages.lesson1Strawberry,
      AppImages.lesson1aunt,
      AppImages.lesson1pepper,
    ],
  };

 final Map<String, List<String>> greenImagesGroub = {
    AppImages.greenlesson: [
      AppImages.lesson1bird,
      AppImages.lesson1vegetable,
      AppImages.lesson1crocodile,
    ],
  };
