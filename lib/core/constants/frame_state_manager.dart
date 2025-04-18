import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/child_progress_scareen.dart';

class FrameStateManager {
  final Map<String, String> _uncoloredToColoredMap = {
    AppImages.uncoloredelephantfram: AppImages.coloredelephantfram,
    AppImages.uncoloredturtle2fram: AppImages.coloredturtlefram,
    AppImages.uncoloredpenguinfram: AppImages.coloredpenguinfram,
    AppImages.uncoloredelephante2fram: AppImages.coloredelephante2fram,
    AppImages.uncoloredmonkey2fram: AppImages.coloredmonkey2fram,
    AppImages.uncoloredflower1fram: AppImages.coloredflower1fram,
    AppImages.uncoloredflower2fram: AppImages.coloredflower2fram,
    AppImages.uncoloredflower3fram: AppImages.coloredflower3fram,
    AppImages.uncoloredflower4Fram: AppImages.coloredflower4fram,
  };

  final Map<String, String> _paintingToFrameMap = {
    AppImages.uncoloredelephante: AppImages.uncoloredelephantfram,
    AppImages.uncoloredturtle: AppImages.uncoloredturtle2fram,
    AppImages.uncoloredpenguin: AppImages.uncoloredpenguinfram,
    AppImages.uncoloredelephante2: AppImages.uncoloredelephante2fram,
    AppImages.uncoloredmonkey2: AppImages.uncoloredmonkey2fram,
    AppImages.floweruncolored1: AppImages.uncoloredflower1fram,
    AppImages.floweruncolored2: AppImages.uncoloredflower2fram,
    AppImages.floweruncolored3: AppImages.uncoloredflower3fram,
    AppImages.floweruncolored4: AppImages.uncoloredflower4Fram,
  };

  final PaintingProgress _paintingProgress = PaintingProgress();

  String? getColoredFrame(String uncoloredFrame) {
    if (_paintingProgress.isPainted(uncoloredFrame)) {
      return _uncoloredToColoredMap[uncoloredFrame];
    }
    return null;
  }

  String? getFrameForPainting(String paintingImage) {
    return _paintingToFrameMap[paintingImage];
  }

  bool isFrameColored(String frameImage) {
    return _paintingProgress.isPainted(frameImage);
  }

  void updateFrameAfterPainting(String paintingImage) {
    String? frameImage = getFrameForPainting(paintingImage);
    if (frameImage != null) {
      _paintingProgress.markItemAsPainted(frameImage);
    }
  }
}
