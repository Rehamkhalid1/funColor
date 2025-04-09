import 'package:color_funland/core/components/win_screen.dart';
import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/constants/app_strings.dart';
import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/addd_profile_info_screen.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/change_password_screen.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/child_progress_scareen.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/delete_account_screen.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/forget_password_screen.dart';
import 'package:color_funland/features/auth/presentation/pages/email_verification_screen.dart';
import 'package:color_funland/features/auth/presentation/pages/landing_page.dart';
import 'package:color_funland/features/auth/presentation/pages/login_page.dart';
import 'package:color_funland/features/auth/presentation/pages/signup_screen.dart';
import 'package:color_funland/features/color_match/pages/color_match.dart';
import 'package:color_funland/features/color_match/pages/color_match_animals.dart';
import 'package:color_funland/features/color_match/pages/color_match_foods.dart';
import 'package:color_funland/features/color_match/pages/color_match_numbers.dart';
import 'package:color_funland/features/color_match/pages/color_match_shapes.dart';
import 'package:color_funland/features/color_mixing/pages/color_mixing.dart';
import 'package:color_funland/features/color_mixing/pages/color_mixing_levels.dart';
import 'package:color_funland/features/color_mixing/pages/color_mixing_sample.dart';
import 'package:color_funland/features/game_board/presentation/pages/game_board_screen.dart';
import 'package:color_funland/core/constants/model.dart';
import 'package:color_funland/features/learning_colors/pages/learning_colors_board.dart';
import 'package:color_funland/features/learning_colors/pages/learning_colors_lessons.dart';
import 'package:color_funland/features/learning_colors/pages/red_green_blue_practice_page.dart';
import 'package:color_funland/features/learning_colors/pages/red_green_blue_video_page.dart';
import 'package:color_funland/features/my_painting/pages/animals_samples_screen.dart';
import 'package:color_funland/features/my_painting/pages/fishes_samples_screen.dart';
import 'package:color_funland/features/my_painting/pages/flowers_samples_screen.dart';
import 'package:color_funland/features/my_painting/pages/my_painting_screen.dart';
import 'package:color_funland/features/my_painting/pages/paint_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const LandingPage(),
  '/login': (context) => const LoginScreen(),
  '/signup': (context) => const SignUpScreen(isFirstPage: true),
  '/addProfileInfo': (context) => const AddProfileInfoScreen(),
  '/forgetPassword': (context) => const ForgetPasswordScreen(),
  '/changePassword': (context) => const ChangePasswordScreen(),
  '/deleteAccount': (context) => const DeleteAccountScreen(),
  '/childProgress': (context) => const ChildProgressScreen(),
  '/email-verification': (context) => const EmailVerificationScreen(),
  '/gameBoard': (context) => const GameBoardScreen(),
  '/mypaintingScreen': (context) => const MyPaintingScreen(),
  '/animalsSamplesScreen': (context) => const AnimalsSamplesScreen(),
  //'/fishesSamplesScreen': (context) => const FishesSamplesScreen(),
  '/flowersSamplesScreen': (context) => const FlowersSamplesScreen(),
  '/colorMatchScreen': (context) => const ColorMatchScreen(),
  '/colorMatchShapes': (context) => const ColorMatchShapes(),
  '/colorMatchFoods': (context) => const ColorMatchFoods(),
  '/colorMatchAnimals': (context) => const ColorMatchAnimals(),
  '/colorMatchNumbers': (context) => ColorMatchNumbers(),
  '/winScreen': (context) => const WinScreen(),

  ///*********************  Animals   ********************** */

  '/elephantColor': (context) => PaintScreen(
        uncoloredImage: AppImages.uncoloredelephante,
        coloredImage: AppImages.coloredelephante,
        categoryName: "Animals",
        colorTools: AppColors.elephantColors,
        itemKey: 'elephant',
       // requiredAccuracy: 75.0,
        requiredAccuracy: 72.0,
      ),
  '/turtleColor': (context) => PaintScreen(
        uncoloredImage: AppImages.uncoloredturtle,
        coloredImage: AppImages.coloredturtle,
        categoryName: "Animals",
        colorTools: AppColors.turtleColors,
        itemKey: 'turtle',
      //  requiredAccuracy: 56.0,
        requiredAccuracy: 53.0,
      ),
  '/elephante2Color': (context) => PaintScreen(
        uncoloredImage: AppImages.uncoloredelephante2,
        coloredImage: AppImages.coloredelephante2,
        categoryName: "Animals",
        colorTools: AppColors.elephante2Colors,
        itemKey: 'elephante2',
        //requiredAccuracy: 61.0,
        requiredAccuracy: 58.0,
      ),
  '/monkey2Color': (context) => PaintScreen(
        uncoloredImage: AppImages.uncoloredmonkey2,
        coloredImage: AppImages.coloredmonkey2,
        categoryName: "Animals",
        colorTools: AppColors.monkey2Colors,
        itemKey: 'monkey2',
       // requiredAccuracy: 85.0,
        requiredAccuracy: 80.0,
      ),
  // '/penguinColor': (context) => PaintScreen(
  //       uncoloredImage: AppImages.uncoloredpenguin,
  //       coloredImage: AppImages.coloredpenguin,
  //       categoryName: "Animals",
  //       colorTools: AppColors.penguinColors,
  //       itemKey: 'penguin',
  //       requiredAccuracy: 61.0,
  //     ),

  ///*********************  Fishes   ********************** */

  // '/dolphinColor': (context) => PaintScreen(
  //       uncoloredImage: AppImages.dolphinFram,
  //       coloredImage: AppImages.coloreddolphinFram,
  //       categoryName: "Fishes",
  //       colorTools: AppColors.dolphinColors,
  //       itemKey: 'dolphin',
  //     ),
  // '/octopusColor': (context) => PaintScreen(
  //       uncoloredImage: AppImages.octopusFram,
  //       coloredImage: AppImages.coloredoctopusFram,
  //       categoryName: "Fishes",
  //       colorTools: AppColors.octopusColors,
  //       itemKey: 'octopus',
  //     ),
  // '/fishColor': (context) => PaintScreen(
  //       uncoloredImage: AppImages.fishFram,
  //       coloredImage: AppImages.coloredfishFram,
  //       categoryName: "Fishes",
  //       colorTools: AppColors.fishColors,
  //       itemKey: 'fish',
  //     ),
  // '/pufferfishColor': (context) => PaintScreen(
  //       uncoloredImage: AppImages.pufferfishFram,
  //       coloredImage: AppImages.coloredpufferfishFram,
  //       categoryName: "Fishes",
  //       colorTools: AppColors.pufferfishColors,
  //       itemKey: 'pufferfish',
  //     ),
  // '/seahorseColor': (context) => PaintScreen(
  //       uncoloredImage: AppImages.seahorseFram,
  //       coloredImage: AppImages.coloredseahorseFram,
  //       categoryName: "Fishes",
  //       colorTools: AppColors.seahorseColors,
  //       itemKey: 'seahorse',
  //     ),

  ///*********************  Flowers   ********************** */

  '/flowerColor1': (context) => PaintScreen(
        uncoloredImage: AppImages.floweruncolored1,
        coloredImage: AppImages.flowercolored1,
        categoryName: "Flowers",
        colorTools: AppColors.flower1Colors,
        itemKey: 'flower1',
       // requiredAccuracy: 71.0,
        requiredAccuracy: 68.0,
      ),
  '/flowerColor2': (context) => PaintScreen(
        uncoloredImage: AppImages.floweruncolored2,
        coloredImage: AppImages.flowercolored2,
        categoryName: "Flowers",
        colorTools: AppColors.flower2Colors,
        itemKey: 'flower2',
       // requiredAccuracy: 95.0,
        requiredAccuracy: 92.0,
      ),
  '/flowerColor3': (context) => PaintScreen(
        uncoloredImage: AppImages.floweruncolored3,
        coloredImage: AppImages.flowercolored3,
        categoryName: "Flowers",
        colorTools: AppColors.flower3Colors,
        itemKey: 'flower3',
      //  requiredAccuracy: 65.0,
        requiredAccuracy: 62.0,
      ),
  '/flowerColor4': (context) => PaintScreen(
        uncoloredImage: AppImages.floweruncolored4,
        coloredImage: AppImages.flowercolored4,
        categoryName: "Flowers",
        colorTools: AppColors.flower4Colors,
        itemKey: 'flower4',
       // requiredAccuracy: 97.0,
        requiredAccuracy: 94.0,
      ),

  ///****************** color mixing ****************************/
  '/colorMixingScreen': (context) => const ColorMixingScreen(),

  ///****************************************** Level 1 ***************************************************///

  '/colorMixingSampls': (context) => ColorMixingSampls(
        images: imageSample1,
        width: 84.w,
        headText: 'Level 1- Primary Colors',
        imageWidth: 188.73.w,
        imageHeight: 188.68.h,
        onTap: () {
          Navigator.of(context).pushNamed("/colorMixingLevels1");
        },
      ),

  '/colorMixingLevels1': (context) => const ColorMixingLevels1(
        firstColor: Color(0xff325EDA),
        secondColor: Color(0xffE80D15),
        resultColor: Color(0xff77398A),
        imageColor: AppImages.colorLevelPurple,
        chosseImageColor1: AppImages.colorLevelGreen,
        chosseImageColor2: AppImages.colorLevelPurple,
        chosseImageColor3: AppImages.colorLevelYellow,
        levelNumber: 'Level 1',
      ),
  '/colorMixingLevels1-2': (context) => const ColorMixingLevels1(
        firstColor: Color(0xff325EDA),
        secondColor: Color(0xffF6CA43),
        resultColor: Color(0xff7CAE0D),
        imageColor: AppImages.colorLevelGreen,
        chosseImageColor1: AppImages.colorLevelGreen,
        chosseImageColor2: AppImages.colorLevelPurple,
        chosseImageColor3: AppImages.colorLevelYellow,
        levelNumber: 'Level 1',
      ),
  '/colorMixingLevels1-3': (context) => const ColorMixingLevels1(
        firstColor: Color(0xffEA0606),
        secondColor: Color(0xffF6CA43),
        resultColor: Color(0xffF29900),
        imageColor: AppImages.colorLevelOrange,
        chosseImageColor1: AppImages.colorLevelPurple,
        chosseImageColor2: AppImages.colorLevelGreen,
        chosseImageColor3: AppImages.colorLevelOrange,
        levelNumber: 'Level 1',
      ),

  ///********************************** Level 2 *******************************************************************///
  '/colorMixingSampls2': (context) => ColorMixingSampls(
        images: imageSample2,
        width: 84.w,
        headText: 'Level 2- Secondary Colors',
        imageWidth: 188.73.w,
        imageHeight: 188.68.h,
        onTap: () {
          Navigator.of(context).pushNamed("/colorMixingLevels2");
        },
      ),
  '/colorMixingLevels2': (context) => const ColorMixingLevels1(
        firstColor: Color(0xff77398A),
        secondColor: Color(0xffE80D15),
        resultColor: Color(0xffC905AD),
        imageColor: AppImages.colorLevelPink,
        chosseImageColor1: AppImages.colorLevelYellow,
        chosseImageColor2: AppImages.colorLevelGreen,
        chosseImageColor3: AppImages.colorLevelPink,
        levelNumber: 'Level 2',
      ),
  '/colorMixingLevels2-2': (context) => const ColorMixingLevels1(
        firstColor: Color(0xff019A00),
        secondColor: Color(0xff0051D4),
        resultColor: Color(0xff0FB4C3),
        imageColor: AppImages.colorLevelBlueGreen,
        chosseImageColor1: AppImages.colorLevelPink,
        chosseImageColor2: AppImages.colorLevelBlueGreen,
        chosseImageColor3: AppImages.colorLevelYellow,
        levelNumber: 'Level 2',
      ),
  '/colorMixingLevels3-2': (context) => const ColorMixingLevels1(
        firstColor: Color(0xffFF7F00),
        secondColor: Color(0xffF6CA43),
        resultColor: Color(0xffF7A500),
        imageColor: AppImages.colorLevelOrange,
        chosseImageColor1: AppImages.colorLevelPurple,
        chosseImageColor2: AppImages.colorLevelGreen,
        chosseImageColor3: AppImages.colorLevelOrange,
        levelNumber: 'Level 2',
      ),

  ///************************************ Level 3 ******************************************************************///
  '/colorMixingSampls3': (context) => ColorMixingSampls(
        images: imageSample3,
        width: 20.w,
        headText: 'Level 3- Tertiary Colors',
        imageWidth: 150.w,
        imageHeight: 150.h,
        onTap: () {
          Navigator.of(context).pushNamed("/colorMixingLevels3");
        },
      ),
  '/colorMixingLevels3': (context) => const ColorMixingLevels1(
        firstColor: Color(0xffDB1D00),
        secondColor: Color(0xffF66F00),
        resultColor: Color(0xffF54700),
        imageColor: AppImages.colorLevelDarkOrange,
        chosseImageColor1: AppImages.colorLevelYellow,
        chosseImageColor2: AppImages.colorLevelGreen,
        chosseImageColor3: AppImages.colorLevelDarkOrange,
        levelNumber: 'Level 3',
      ),
  '/colorMixingLevels2-3': (context) => const ColorMixingLevels1(
        firstColor: Color(0xffFDED00),
        secondColor: Color(0xff4E8D4B),
        resultColor: Color(0xffAFCC1C),
        imageColor: AppImages.colorLevelGreen,
        chosseImageColor1: AppImages.colorLevelOrange,
        chosseImageColor2: AppImages.colorLevelGreen,
        chosseImageColor3: AppImages.colorLevelDarkOrange,
        levelNumber: 'Level 3',
      ),
  '/colorMixingLevels3-3': (context) => const ColorMixingLevels1(
        firstColor: Color(0xff002AFF),
        secondColor: Color(0xff553245),
        resultColor: Color(0xff333270),
        imageColor: AppImages.colorLevelBluePurple,
        chosseImageColor1: AppImages.colorLevelBluePurple,
        chosseImageColor2: AppImages.colorLevelGreen,
        chosseImageColor3: AppImages.colorLevelDarkOrange,
        levelNumber: 'Level 3',
      ),

  ///********************************* learning colors *****************************/

  '/learningColorsboard': (context) => LearningColorsBoard(),

  '/learningColorslesson1': (context) => LearningColorsLessons(
        headText: 'Lesson 1',
        headText2: 'Primary Colors',
        lessonImage: AppImages.colorspalette,
        images: lesson1Images,
      ),

  '/redLessonVideo': (context) => RedGreenBlueVideoPage(
        lessonImage: AppImages.redlesson,
        lessonNumber: 1,
        videoUrl:AppStrings.redLessonVideoUrl,
      ),
  '/greenLessonVideo': (context) => RedGreenBlueVideoPage(
        lessonImage: AppImages.greenlesson,
        lessonNumber: 2,
        videoUrl:AppStrings.greenLessonVideoUrl,
      ),
  '/blueLessonVideo': (context) => RedGreenBlueVideoPage(
        lessonImage: AppImages.bluelesson,
        lessonNumber: 3,
        videoUrl:AppStrings.blueLessonVideoUrl,
      ),

  '/redLesson': (context) => RedGreenBluePracticePage(
        images: redLessonImages,
        lessonImage: AppImages.redlesson,
      ),
  '/greenLesson': (context) => RedGreenBluePracticePage(
        images: greenLessonImages,
        lessonImage: AppImages.greenlesson,
      ),
  '/blueLesson': (context) => RedGreenBluePracticePage(
        images: blueLessonImages,
        lessonImage: AppImages.bluelesson,
      ),
};
