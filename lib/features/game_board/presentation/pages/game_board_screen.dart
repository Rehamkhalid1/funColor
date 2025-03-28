import 'package:color_funland/core/components/animated_container_widget.dart';
import 'package:color_funland/core/components/toggle_theme.dart';
import 'package:color_funland/core/constants/app_icons.dart';
import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/components/app_bar_row.dart';
import 'package:color_funland/core/components/two_items_bottom_navigation.dart';
import 'package:color_funland/core/services/feature_management_service.dart';
import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/features/game_board/presentation/widgets/games_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameBoardScreen extends StatefulWidget {
  const GameBoardScreen({super.key});

  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}

class _GameBoardScreenState extends State<GameBoardScreen> {
  final GlobalKey<AnimatedContainerState> _containerKey = GlobalKey();
  final _featureService = FeatureManagementService();

  @override
  void initState() {
    super.initState();
    ToggleTheme.isLight.addListener(_updateTheme);
  }

  @override
  void dispose() {
    ToggleTheme.isLight.removeListener(_updateTheme);
    super.dispose();
  }

  void _updateTheme() {
    setState(() {}); // Triggers a rebuild when the theme changes
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ToggleTheme.isLightMode()
                ? AppImages.darkGamBoard
                : AppImages.lightGameBoard),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarRow(
            gameGroup: "Activity Board",
            inSideGame: false,
            containerKey: _containerKey,
            gameGroupColor: ToggleTheme.isLightMode()
                ? const Color(0xffEADCFF)
                : const Color(0xff302442),
            dividerColor: ToggleTheme.isLightMode()
                ? const Color(0xffEADCFF)
                : AppColors.cBlackColor,
            menu:
                ToggleTheme.isLightMode() ? AppIcons.lightmenu : AppIcons.menu,
          ),
          body: Stack(
            children: [
              SafeArea(
                child: Games(featureService: _featureService),
              ),
              AnimatedContainerWidget(key: _containerKey),
            ],
          ),
          bottomNavigationBar:
              Padding(
                padding:  EdgeInsets.only(bottom: 50.h),
                child: const TwoItemsBottomNavigation(insideGame: false),
              ),
        ),
      ),
    );
  }
}
