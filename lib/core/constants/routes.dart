import 'package:color_funland/core/components/win_screen.dart';
import 'package:color_funland/core/constants/app_images.dart';
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
import 'package:color_funland/features/color_match/pages/color_match_shapes.dart';
import 'package:color_funland/features/color_mixing/pages/color_mixing.dart';
import 'package:color_funland/features/color_mixing/pages/color_mixing_levels.dart';
import 'package:color_funland/features/color_mixing/pages/color_mixing_sample.dart';
import 'package:color_funland/features/color_mixing/pages/color_mixing_sample3.dart';
import 'package:color_funland/features/game_board/presentation/pages/game_board_screen.dart';
import 'package:color_funland/features/my_painting/model.dart';
import 'package:color_funland/features/my_painting/pages/animals_samples_screen.dart';
import 'package:color_funland/features/my_painting/pages/fishes_samples_screen.dart';
import 'package:color_funland/features/my_painting/pages/flowers_samples_screen.dart';
import 'package:color_funland/features/my_painting/pages/my_painting_screen.dart';
import 'package:color_funland/features/my_painting/pages/paint_screen.dart';
import 'package:flutter/material.dart';

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
  '/gameBoard': (context) =>const  GameBoardScreen(),
  '/mypaintingScreen': (context) => const MyPaintingScreen(),
  '/animalsSamplesScreen': (context) => const AnimalsSamplesScreen(),
  '/fishesSamplesScreen': (context) => const FishesSamplesScreen(),
  '/flowersSamplesScreen': (context) => const FlowersSamplesScreen(),
    '/colorMatchScreen' : (context) => const ColorMatchScreen(),
   '/colorMatchShapes' : (context) => const ColorMatchShapes(),
   '/colorMatchFoods' : (context) => const ColorMatchFoods(),
   '/colorMatchAnimals' : (context) => const ColorMatchAnimals(),
   '/winScreen' : (context) => const WinScreen(),

  ///*********************  Animals   ********************** */
  
  '/duckColor': (context) => PaintScreen(
      uncoloredImage: AppImages.duckUncolored,
      coloredImage: AppImages.duckColored,categoryName: "Animals",
      colorTools: AppColors.duckColors,
      ),
  '/elephantColor': (context) => PaintScreen(
      uncoloredImage: AppImages.elephantUncolored,
      coloredImage: AppImages.elephantColored,categoryName: "Animals",
      colorTools: AppColors.elephantColors,
      ),
  '/catColor': (context) => PaintScreen(
      uncoloredImage: AppImages.catUncolored,
      coloredImage: AppImages.catColored,categoryName: "Animals",
      colorTools: AppColors.catColors,
      ),
  '/giraffeColor': (context) => PaintScreen(
      uncoloredImage: AppImages.giraffeUncolored,
      coloredImage: AppImages.giraffeColored,categoryName: "Animals",
      colorTools: AppColors.giraffeColors,
      ),
  '/lionColor': (context) => PaintScreen(
      uncoloredImage: AppImages.lionUncolored,
      coloredImage: AppImages.lionColored,categoryName: "Animals",
      colorTools: AppColors.lionColors,
      ),


  ///*********************  Fishes   ********************** */
  
  '/dolphinColor': (context) => PaintScreen(
      uncoloredImage: AppImages.dolphinUncolored,
      coloredImage: AppImages.dolphinColored,categoryName: "Fishes",
      colorTools: AppColors.dolphinColors,
      ),
  '/octupusColor': (context) => PaintScreen(
      uncoloredImage: AppImages.octopusUncolored,
      coloredImage: AppImages.octopusColored,categoryName: "Fishes",
      colorTools: AppColors.octupusColors,
      ),
  '/fishColor': (context) => PaintScreen(
      uncoloredImage: AppImages.fishUncolored,
      coloredImage: AppImages.fishColored,categoryName: "Fishes",
      colorTools: AppColors.fishColors,
      ),
  '/pufferfishColor': (context) => PaintScreen(
      uncoloredImage: AppImages.pufferfishUncolored,
      coloredImage: AppImages.pufferfishColored,categoryName: "Fishes",
      colorTools: AppColors.pufferfishColors,),
  '/seahorseColor': (context) => PaintScreen(
      uncoloredImage: AppImages.seahorseUncolored,
      coloredImage: AppImages.seahorseColored,categoryName: "Fishes",
      colorTools: AppColors.seahorseColors,),

  ///*********************  Flowers   ********************** */
  
  
  '/flowerColor1': (context) => PaintScreen(
      uncoloredImage: AppImages.flowerUncolored1,
      coloredImage: AppImages.flowerColored1,categoryName: "Floweres",
      colorTools: AppColors.flower1Colors,),
  '/flowerColor2': (context) => PaintScreen(
      uncoloredImage: AppImages.flowerUncolored2,
      coloredImage: AppImages.flowerColored2,categoryName: "Floweres",
      colorTools: AppColors.flower2Colors,),
  '/flowerColor3': (context) => PaintScreen(
      uncoloredImage: AppImages.flowerUncolored3,
      coloredImage: AppImages.flowerColored3,categoryName: "Floweres",
       colorTools: AppColors.flower3Colors,),
  '/flowerColor4': (context) => PaintScreen(
      uncoloredImage: AppImages.flowerUncolored4,
      coloredImage: AppImages.flowerColored4,categoryName: "Floweres",
       colorTools: AppColors.flower4Colors,),
  '/flowerColor5': (context) => PaintScreen(
      uncoloredImage: AppImages.flowerUncolored5,
      coloredImage: AppImages.flowerColored5,categoryName: "Floweres",
       colorTools: AppColors.flower5Colors,),




///****************** color mixing ****************************/
  '/colorMixingScreen' : (context) => const ColorMixingScreen(),
   '/colorMixingSampls' : (context) => ColorMixingSampls(title:"Level 1- 3 Colors",images: imageSample1,width: 84),
    '/colorMixingSampls2' : (context) => ColorMixingSampls(title: "Level 2- 3 Colors",images: imageSample2,width: 14.2),
    '/colorMixingSampls3' : (context) => const ColorMixingSampls3(),
    '/colorMixingLevels' : (context) => const ColorMixingLevels2(firstColor: Color(0xff325EDA),
        secondColor: Color(0xffE80D15),
        resultColor: Color(0xff77398A),
        imageColor: AppImages.colorLevelPurple,
        chosseImageColor1: AppImages.colorLevelGreen,
        chosseImageColor2: AppImages.colorLevelPurple,
        chosseImageColor3: AppImages.colorLevelYellow
    ),
    '/colorMixingLevels1-2' : (context) => const ColorMixingLevels2(firstColor: Color(0xff325EDA),
        secondColor: Color(0xffF6CA43),
        resultColor: Color(0xff7CAE0D),
        imageColor: AppImages.colorLevelGreen,
        chosseImageColor1: AppImages.colorLevelGreen,
        chosseImageColor2: AppImages.colorLevelPurple,
        chosseImageColor3: AppImages.colorLevelYellow),
  '/colorMixingLevels1-3' : (context) => const ColorMixingLevels2(firstColor: Color(0xffEA0606),
      secondColor: Color(0xffF6CA43),
      resultColor: Color(0xffF29900),
      imageColor: AppImages.colorLevelOrange,
      chosseImageColor1: AppImages.colorLevelPurple,
      chosseImageColor2: AppImages.colorLevelGreen,
      chosseImageColor3: AppImages.colorLevelOrange),
  '/colorMixingLevels1-4' : (context) => const ColorMixingLevels2(firstColor: Color(0xffEA0606),
      secondColor: Color(0xff368727),
      resultColor: Color(0xffF6CA43),
      imageColor: AppImages.colorLevelYellow,
      chosseImageColor1: AppImages.colorLevelBrown,
      chosseImageColor2: AppImages.colorLevelPurple,
      chosseImageColor3: AppImages.colorLevelYellow),












};
