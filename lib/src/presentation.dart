import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/slide_footer.dart';
import 'components/slide_header.dart';
import 'components.dart';

typedef HeaderBuilder = Widget Function({
  BuildContext context,
  int slideIndex,
});

typedef FooterBuilder = Widget Function({
  BuildContext context,
  int slideIndex,
});

class Presentation extends StatefulWidget {
  const Presentation({
    Key? key,
    required this.slides,
    this.controller,
    this.viewPortFraction = 0.8,
    this.onSlideChanged,
    this.footerBuilder,
    this.showFooter = true,
    this.headerBuilder,
    this.showHeader = true,
    this.title,
  }) : super(key: key);

  /// The controller which controls the presentation.
  final PresentationController? controller;

  /// The slides to show in the presentation.
  final List<Widget> slides;

  /// The fraction of the viewport that each slide should occupy.
  ///
  /// Defaults to 0.8, which means each page fills 80% of the presentation view.
  final double viewPortFraction;

  /// Gets invoked when the current slide changed.
  final void Function(int index)? onSlideChanged;

  /// The footer which will be shown for each slide.
  ///
  /// Can be hidden/made visible with [showHeader].
  ///
  /// When `null` defaults to [SlideFooter].
  final FooterBuilder? footerBuilder;

  /// Whether or not the header should be shown.
  final bool showFooter;

  /// The header which will be shown for each slide.
  ///
  /// Can be hidden/made visible with [showHeader].
  ///
  /// When `null` defaults to [SlideHeader].
  final HeaderBuilder? headerBuilder;

  /// Whether or not the header should be shown.
  final bool showHeader;

  /// The title of the presentation.
  final String? title;

  @override
  _PresentationState createState() => _PresentationState();
}

class _PresentationState extends State<Presentation>
    with SingleTickerProviderStateMixin {
  late PresentationController controller;
  int _slideIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? PresentationController();
  }

  @override
  void didUpdateWidget(covariant Presentation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != null && widget.controller != controller) {
      setState(() => controller = widget.controller!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.nextPage,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _header(),
            Expanded(child: _body()),
            _footer(),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return SlideVisibilityAnimatedWidget(
      shouldBeVisible: widget.showHeader,
      child: widget.headerBuilder == null
          ? SlideHeader(
              title: widget.title,
              slideIndex: _slideIndex,
              slideCount: widget.slides.length,
            )
          : widget.headerBuilder!(
              context: context,
              slideIndex: _slideIndex,
            ),
    );
  }

  Widget _body() {
    return CarouselSlider.builder(
      // duration: const Duration(milliseconds: 800),
      carouselController: controller,
      options: CarouselOptions(
        height: double.infinity,
        enableInfiniteScroll: false,
        viewportFraction: widget.viewPortFraction,
        onPageChanged: onSlideChanged,
      ),
      itemCount: widget.slides.length,
      itemBuilder: (context, i, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: widget.slides[i],
        );
      },
    );
  }

  Widget _footer() {
    return SlideVisibilityAnimatedWidget(
      shouldBeVisible: widget.showFooter,
      child: widget.footerBuilder == null
          ? SlideFooter(
              onNext: controller.nextPage,
              onPrevious: controller.previousPage,
              currentSlideIndex: _slideIndex,
              slideCount: widget.slides.length,
            )
          : widget.footerBuilder!(
              context: context,
              slideIndex: _slideIndex,
            ),
    );
  }

  void onSlideChanged(int index, CarouselPageChangedReason reason) {
    setState(() => _slideIndex = index);
    if (widget.onSlideChanged != null) {
      widget.onSlideChanged!(index);
    }
  }
}

abstract class PresentationController implements CarouselController {
  factory PresentationController() => PresentationControllerImpl();
}

class PresentationControllerImpl extends CarouselControllerImpl
    implements PresentationController {}
