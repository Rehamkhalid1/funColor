import 'package:color_funland/core/components/animated_container_widget.dart';
import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/components/app_bar_row.dart';
import 'package:color_funland/core/components/two_items_bottom_navigation.dart';
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

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.landscape
            ? _buildLandscapeLayout()
            : _buildPortraitLayout();
      },
    );
  }

  Widget _buildLandscapeLayout() {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.lightGameBoard),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarRow(
            gameGroup: "Activity Board",
            inSideGame: false,
            containerKey: _containerKey,
          ),
          body: Stack(
            children: [
              SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(51.5.w, 31.84.h, 57.5.w, 31.84.w),
                      child: const Games(),
                    ),
                    TwoItemsBottomNavigation(
                      insideGame: false,
                    ),
                  ],
                ),
              ),
              AnimatedContainerWidget(key: _containerKey),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Image.asset(
        "assets/images/maskgroup.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
