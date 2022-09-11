import 'package:flutter/material.dart';
import 'package:ventura/app/layouts/about_us/about_us_image_slider.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Metrics.width(context),
      child: Column(
        children: [
          BaseContainer(
            child: Column(
              children: [
                const SizedBox(height: 80),
                'About us'.msMadi(
                  color: const Color(0xff1f8b3a),
                  fontSize: 52,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 192),
                        child: 'Art & science of interior design'.stixTwoText(
                          textAlign: TextAlign.right,
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 60),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 260.0),
                        child:
                            'The environments we live, work and play in are integral to all our lives. Like the design of products and services we provide.'
                                .poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.75,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
          const AboutUsImageSlider(),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
