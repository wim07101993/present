import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'animated_carousel_slider.dart';

class Presentation extends StatefulWidget {
  const Presentation({
    Key? key,
    required this.slides,
    this.viewPortFraction = 0.8,
    this.onSlideChanged,
  }) : super(key: key);

  /// The slides to show in the presentation.
  final List<Widget> slides;

  /// The fraction of the viewport that each slide should occupy.
  ///
  /// Defaults to 0.8, which means each page fills 80% of the presentation view.
  final double viewPortFraction;

  /// Gets invoked when the current slide changed.
  final void Function(int index)? onSlideChanged;

  @override
  _PresentationState createState() => _PresentationState();
}

class _PresentationState extends State<Presentation>
    with SingleTickerProviderStateMixin {
  final _carouselCtrl = CarouselController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _carouselCtrl.nextPage,
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
    return Container();
  }

  Widget _body() {
    return AnimatedCarouselSlider.builder(
      duration: const Duration(milliseconds: 800),
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
    return Container();
  }

  void onSlideChanged(int index, CarouselPageChangedReason reason) {
    if (widget.onSlideChanged != null) {
      widget.onSlideChanged!(index);
    }
  }
}
