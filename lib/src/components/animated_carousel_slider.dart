import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class AnimatedCarouselSlider extends ImplicitlyAnimatedWidget {
  const AnimatedCarouselSlider({
    Key? key,
    required this.items,
    required this.options,
    this.controller,
    Curve curve = Curves.linear,
    required Duration duration,
    VoidCallback? onEnd,
  })  : itemBuilder = null,
        itemCount = items != null ? items.length : 0,
        super(
          key: key,
          curve: curve,
          duration: duration,
          onEnd: onEnd,
        );

  const AnimatedCarouselSlider.builder({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    required this.options,
    this.controller,
    Curve curve = Curves.linear,
    required Duration duration,
    VoidCallback? onEnd,
  })  : items = null,
        super(
          key: key,
          curve: curve,
          duration: duration,
          onEnd: onEnd,
        );

  /// [CarouselOptions] to create a [CarouselState] with
  ///
  /// This property must not be null
  final CarouselOptions options;

  /// The widgets to be shown in the carousel of default constructor
  final List<Widget>? items;

  /// The widget item builder that will be used to build item on demand
  /// The third argument is the PageView's real index, can be used to cooperate
  /// with Hero.
  final ExtendedIndexedWidgetBuilder? itemBuilder;

  /// A [MapController], used to control the map.
  final CarouselController? controller;

  final int itemCount;

  @override
  _AnimatedCarouselSliderState createState() {
    return _AnimatedCarouselSliderState();
  }
}

class _AnimatedCarouselSliderState
    extends AnimatedWidgetBaseState<AnimatedCarouselSlider> {
  Tween<double>? _height;
  Tween<double>? _aspectRatio;
  Tween<double>? _viewportFraction;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    if (_height != null) {
      _height = visitor(
        _height,
        widget.options.height,
        (dynamic value) => Tween<double>(begin: value as double),
      ) as Tween<double>;
    }
    _aspectRatio = visitor(
      _aspectRatio,
      widget.options.aspectRatio,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>;
    _viewportFraction = visitor(
      _viewportFraction,
      widget.options.viewportFraction,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>;
  }

  @override
  Widget build(BuildContext context) {
    final options = CarouselOptions(
      height: _height?.evaluate(animation),
      aspectRatio: _aspectRatio?.evaluate(animation) ?? 16 / 9,
      viewportFraction: _viewportFraction?.evaluate(animation) ?? 0.8,
      initialPage: widget.options.initialPage,
      enableInfiniteScroll: widget.options.enableInfiniteScroll,
      reverse: widget.options.reverse,
      autoPlay: widget.options.autoPlay,
      autoPlayInterval: widget.options.autoPlayInterval,
      autoPlayAnimationDuration: widget.options.autoPlayAnimationDuration,
      autoPlayCurve: widget.options.autoPlayCurve,
      enlargeCenterPage: widget.options.enlargeCenterPage,
      onPageChanged: widget.options.onPageChanged,
      onScrolled: widget.options.onScrolled,
      scrollPhysics: widget.options.scrollPhysics,
      pageSnapping: widget.options.pageSnapping,
      scrollDirection: widget.options.scrollDirection,
      pauseAutoPlayOnTouch: widget.options.pauseAutoPlayOnTouch,
      pauseAutoPlayOnManualNavigate:
          widget.options.pauseAutoPlayOnManualNavigate,
      pauseAutoPlayInFiniteScroll: widget.options.pauseAutoPlayInFiniteScroll,
      pageViewKey: widget.options.pageViewKey,
      enlargeStrategy: widget.options.enlargeStrategy,
      disableCenter: widget.options.disableCenter,
    );
    return widget.itemBuilder == null
        ? CarouselSlider(items: widget.items, options: options)
        : CarouselSlider.builder(
            itemCount: widget.itemCount,
            itemBuilder: widget.itemBuilder,
            options: options,
          );
  }
}
