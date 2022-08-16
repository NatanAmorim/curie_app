import 'dart:math';

import 'package:flutter/material.dart';

class ImageViewerScreen extends StatefulWidget {
  const ImageViewerScreen({
    Key? key,
    required this.tag,
    required this.image,
  }) : super(key: key);

  static const routeName = '/image_viewer';

  final String tag;
  final Image image;

  @override
  State<ImageViewerScreen> createState() => _ImageViewerScreenState();
}

class _ImageViewerScreenState extends State<ImageViewerScreen>
    with TickerProviderStateMixin {
  TransformationController transformationController =
      TransformationController();

  late AnimationController resetAnimationController;
  late AnimationController rotateAnimationController;
  late Animation<double> animation;
  int? degrees;

  @override
  void initState() {
    super.initState();
    resetAnimationController = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 300,
        ));

    rotateAnimationController = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 300,
        ));

    const double finalAngle = 90 * pi / 180;

    animation = Tween<double>(begin: 0, end: finalAngle)
        .animate(rotateAnimationController);
  }

  @override
  void dispose() {
    resetAnimationController.dispose();
    rotateAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: widget.tag,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                tooltip: 'Zoom In',
                onPressed: zoomIn,
                icon: const Icon(
                  Icons.zoom_in,
                ),
              ),
              IconButton(
                tooltip: 'Zoom Out',
                onPressed: zoomOut,
                icon: const Icon(
                  Icons.zoom_out,
                ),
              ),
              IconButton(
                tooltip: 'reset zoom',
                onPressed: reset,
                icon: const Icon(
                  Icons.crop_free,
                ),
              ),
              IconButton(
                tooltip: 'rotate',
                onPressed: rotateRight,
                icon: const Icon(
                  Icons.rotate_right,
                ),
              ),
            ],
          ),
          foregroundColor: Colors.white,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        body: InteractiveViewer(
          transformationController: transformationController,
          maxScale: 3,
          child: Center(
            child: AnimatedBuilder(
                animation: animation,
                child: widget.image,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: animation.value,
                    child: child,
                  );
                }),
          ),
        ),
      ),
    );
  }

  void reset() {
    final animation = Matrix4Tween(
      begin: transformationController.value,
      end: Matrix4.identity(),
    ).animate(resetAnimationController);

    resetAnimationController.addListener(() {
      transformationController.value = animation.value;
    });

    resetAnimationController.reset();
    resetAnimationController.forward();
  }

  void zoomIn() {
    // TODO https://www.youtube.com/watch?v=44mPHuqPgTU
  }

  void zoomOut() {
    // TODO https://www.youtube.com/watch?v=44mPHuqPgTU
  }

  void rotateRight() {
    setRotacao();
    rotateAnimationController.forward(from: 0);
  }

  void setRotacao() {
    switch (degrees) {
      case 0:
        const double initialAngle = 0;
        const double finalAngle = 90 * pi / 180;

        animation = Tween<double>(begin: initialAngle, end: finalAngle)
            .animate(rotateAnimationController);
        degrees = 90;
        break;
      case 90:
        const double initialAngle = 90 * pi / 180;
        const double finalAngle = 180 * pi / 180;

        animation = Tween<double>(begin: initialAngle, end: finalAngle)
            .animate(rotateAnimationController);
        degrees = 180;

        break;
      case 180:
        const double initialAngle = 180 * pi / 180;
        const double finalAngle = 270 * pi / 180;

        animation = Tween<double>(begin: initialAngle, end: finalAngle)
            .animate(rotateAnimationController);
        degrees = 270;

        break;
      case 270:
        const double initialAngle = 270 * pi / 180;
        const double finalAngle = 360 * pi / 180;

        animation = Tween<double>(begin: initialAngle, end: finalAngle)
            .animate(rotateAnimationController);
        degrees = 0;

        break;
      default:
        const double initialAngle = 0 * pi / 180;
        const double finalAngle = 90 * pi / 180;

        animation = Tween<double>(begin: initialAngle, end: finalAngle)
            .animate(rotateAnimationController);
        degrees = 90;
        break;
    }
  }
}

class ImageViewerScreenArguments {
  ImageViewerScreenArguments({
    required this.tag,
    required this.image,
  });

  final String tag;
  final Image image;
}
