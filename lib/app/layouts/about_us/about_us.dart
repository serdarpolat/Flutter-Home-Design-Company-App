import 'package:flutter/material.dart';
import 'package:ventura/app/layouts/about_us/about_us_image_slider.dart';
import 'package:ventura/core/core.dart';

import 'about_us_info.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));

    return SizedBox(
      width: Metrics.width(context),
      child: Column(
        children: [
          AboutUsInfo(pad: pad),
          const AboutUsImageSlider(),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
