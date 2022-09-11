import 'package:flutter/material.dart';

import 'image_clider_controller.dart';

class AboutUsImageSlider extends StatefulWidget {
  const AboutUsImageSlider({Key? key}) : super(key: key);

  @override
  State<AboutUsImageSlider> createState() => _AboutUsImageSliderState();
}

class _AboutUsImageSliderState extends State<AboutUsImageSlider> {
  List<String> images = [
    'https://images.unsplash.com/photo-1579656592043-a20e25a4aa4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=654&q=80',
    'https://images.unsplash.com/photo-1551298370-9d3d53740c72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1540932239986-30128078f3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1540638349517-3abd5afc5847?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1599696848652-f0ff23bc911f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
  ];
  late PageController _controller;
  int currentPage = 0;

  @override
  void initState() {
    _controller = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.25,
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 700,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (val) => setState(() => currentPage = val),
            itemCount: images.length,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final img = images[index];

              return Padding(
                padding: const EdgeInsets.only(left: 36, right: 36),
                child: AnimatedScale(
                  duration: const Duration(milliseconds: 240),
                  scale: currentPage == index ? 1 : 0.75,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 240),
                    opacity: currentPage == index ? 1 : 0.25,
                    child: AspectRatio(
                      aspectRatio: 3 / 4,
                      child: Image.network(img, fit: BoxFit.cover),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 64),
        ImageSliderController(
          currentPage: currentPage,
          images: images,
          prev: currentPage != 0
              ? () {
                  _controller.animateToPage(
                    currentPage - 1,
                    duration: const Duration(milliseconds: 240),
                    curve: Curves.linear,
                  );
                }
              : null,
          next: (currentPage != images.length - 1)
              ? () {
                  _controller.animateToPage(
                    currentPage + 1,
                    duration: const Duration(milliseconds: 240),
                    curve: Curves.linear,
                  );
                }
              : null,
        ),
      ],
    );
  }
}
