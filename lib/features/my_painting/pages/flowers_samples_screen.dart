

import 'package:color_funland/core/constants/model.dart';
import 'package:color_funland/features/my_painting/widgets/shared_samples_screen.dart';
import 'package:flutter/material.dart';


class FlowersSamplesScreen extends StatelessWidget {
  const FlowersSamplesScreen({super.key});

 @override
  Widget build(BuildContext context) {
        return SharedSamplesScreen( frames: flowersFram,paintingImages:flowersPaintingScreen ,title: 'Flowers',);

  }
}