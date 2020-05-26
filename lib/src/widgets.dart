///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020/5/26 13:45
///
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Empty counter builder for [TextField].
final InputCounterWidgetBuilder emptyCounterBuilder = (
  BuildContext _, {
  int currentLength,
  int maxLength,
  bool isFocused,
}) =>
    null;

/// Max radius for border radius.
const maxBorderRadius = BorderRadius.all(Radius.circular(999999));

/// Progress Indicator. Used in loading data.
class PlatformProgressIndicator extends StatelessWidget {
  const PlatformProgressIndicator({
    Key key,
    this.strokeWidth = 4.0,
    this.radius = 10.0,
    this.color,
    this.value,
    this.brightness,
  }) : super(key: key);

  final double strokeWidth;
  final double radius;
  final Color color;
  final double value;
  final Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTheme(
            data: CupertinoThemeData(
              brightness: brightness ?? Brightness.dark,
            ),
            child: CupertinoActivityIndicator(radius: radius),
          )
        : CircularProgressIndicator(
            strokeWidth: strokeWidth,
            valueColor:
                color != null ? AlwaysStoppedAnimation<Color>(color) : null,
            value: value,
          );
  }
}

class NoSplashFactory extends InteractiveInkFeatureFactory {
  const NoSplashFactory();

  @override
  InteractiveInkFeature create({
    @required MaterialInkController controller,
    @required RenderBox referenceBox,
    @required Offset position,
    @required Color color,
    @required TextDirection textDirection,
    bool containedInkWell = false,
    RectCallback rectCallback,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    double radius,
    VoidCallback onRemoved,
  }) {
    return NoSplash(
      controller: controller,
      referenceBox: referenceBox,
      color: color,
      onRemoved: onRemoved,
    );
  }
}

class NoSplash extends InteractiveInkFeature {
  NoSplash({
    @required MaterialInkController controller,
    @required RenderBox referenceBox,
    Color color,
    VoidCallback onRemoved,
  })  : assert(controller != null),
        assert(referenceBox != null),
        super(
            controller: controller,
            referenceBox: referenceBox,
            onRemoved: onRemoved) {
    controller.addInkFeature(this);
  }

  @override
  void paintFeature(Canvas canvas, Matrix4 transform) {}
}

class NoGlowScrollBehavior extends ScrollBehavior {
  const NoGlowScrollBehavior();

  @override
  Widget buildViewportChrome(BuildContext _, Widget child, AxisDirection __) =>
      child;
}
