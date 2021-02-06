import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'nest_hub_screen.dart';

class NestHub extends StatefulWidget {
  const NestHub({
    Key? key,
    this.enableAnimations = true,
  }) : super(key: key);

  final bool enableAnimations;

  @override
  _NestHubState createState() => _NestHubState();
}

class _NestHubState extends State<NestHub> with SingleTickerProviderStateMixin {
  static const screenRatio = 890 / 518;
  static const screenHeight = 518.0;
  static const widgetHeight = 716.0;

  late Animation<double> imageVisibilityAnimation;
  late Animation<double> screenXRotationAnimation;
  late Animation<double> screenScaleAnimation;
  late Animation<double> widgetWidthAnimation;
  late Animation<EdgeInsets> screenPaddingAnimation;
  late AnimationController animationCtrl;

  @override
  void initState() {
    super.initState();
    animationCtrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    imageVisibilityAnimation = Tween<double>(begin: 1, end: 0)
        .animate(animationCtrl)
          ..addListener(() => setState(() {}));
    screenXRotationAnimation = Tween<double>(begin: -0.10, end: 0)
        .animate(animationCtrl)
          ..addListener(() => setState(() {}));
    screenScaleAnimation = Tween<double>(
      begin: 1,
      end: widgetHeight / screenHeight,
    ).animate(animationCtrl)
      ..addListener(() => setState(() {}));
    widgetWidthAnimation = Tween<double>(
      begin: 1046,
      end: widgetHeight * screenRatio,
    ).animate(animationCtrl)
      ..addListener(() => setState(() {}));
    screenPaddingAnimation = Tween<EdgeInsets>(
      begin: const EdgeInsets.only(bottom: 140, right: 1),
      end: EdgeInsets.zero,
    ).animate(animationCtrl)
      ..addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: GestureDetector(
        onTap: animationCtrl.status == AnimationStatus.completed ||
                !widget.enableAnimations
            ? null
            : () => animationCtrl.forward(),
        child: SizedBox(
          height: widgetHeight,
          width: widgetWidthAnimation.value,
          child: Stack(
            children: [
              Opacity(
                opacity: imageVisibilityAnimation.value,
                child: Image.asset('assets/images/google_nest_hub.png'),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: screenPaddingAnimation.value,
                child: Transform(
                  transform: Matrix4.identity()
                    ..scale(screenScaleAnimation.value)
                    ..setEntry(3, 2, 0.0007)
                    ..rotateX(screenXRotationAnimation.value),
                  alignment: FractionalOffset.bottomCenter,
                  child: const SizedBox(
                    height: screenHeight,
                    width: screenRatio * screenHeight,
                    child: NestHubScreen(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
