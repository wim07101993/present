import 'package:flutter/widgets.dart';

class AnimatedSlideVisibilityWidget extends StatefulWidget {
  const AnimatedSlideVisibilityWidget({
    Key? key,
    required this.child,
    this.shouldBeVisible = true,
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.easeInOutSine,
    this.axis = Axis.vertical,
    this.axisAlignment = 0.0,
  }) : super(key: key);

  final Widget child;

  /// Whether the child should be visible or not.
  final bool shouldBeVisible;

  /// The length of time this animation should last.
  ///
  /// If [reverseDuration] is specified, then [duration] is only used when going
  /// [forward]. Otherwise, it specifies the duration going in both directions.
  final Duration duration;

  /// The curve to use in the forward and reverse direction.
  final Curve curve;

  /// [Axis.horizontal] if [sizeFactor] modifies the width, otherwise
  /// [Axis.vertical].
  final Axis axis;

  /// Describes how to align the child along the axis that [sizeFactor] is
  /// modifying.
  ///
  /// A value of -1.0 indicates the top when [axis] is [Axis.vertical], and the
  /// start when [axis] is [Axis.horizontal]. The start is on the left when the
  /// text direction in effect is [TextDirection.ltr] and on the right when it
  /// is [TextDirection.rtl].
  ///
  /// A value of 1.0 indicates the bottom or end, depending upon the [axis].
  ///
  /// A value of 0.0 (the default) indicates the center for either [axis] value.
  final double axisAlignment;

  @override
  _AnimatedSlideVisibilityWidgetState createState() {
    return _AnimatedSlideVisibilityWidgetState();
  }
}

class _AnimatedSlideVisibilityWidgetState
    extends State<AnimatedSlideVisibilityWidget> with TickerProviderStateMixin {
  late AnimationController _animationCtrl;
  late CurvedAnimation _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationCtrl = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _slideAnimation = CurvedAnimation(
      parent: _animationCtrl,
      curve: widget.curve,
      reverseCurve: widget.curve,
    );
  }

  @override
  Widget build(BuildContext context) {
    _animationCtrl.duration = widget.duration;
    _slideAnimation.curve = widget.curve;
    _slideAnimation.reverseCurve = widget.curve;
    if (widget.shouldBeVisible) {
      _animationCtrl.forward();
    } else {
      _animationCtrl.reverse();
    }
    return SizeTransition(
      sizeFactor: _slideAnimation,
      axis: widget.axis,
      axisAlignment: widget.axisAlignment,
      child: widget.child,
    );
  }
}
