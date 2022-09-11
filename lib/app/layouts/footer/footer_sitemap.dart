import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class FooterSiteMap extends StatelessWidget {
  const FooterSiteMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Site Map'.poppins(
            fontWeight: FontWeight.bold,
            color: white,
            fontSize: 18 + 6 * pad,
          ),
          SizedBox(height: 18 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'Home'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14 + 2 * pad,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 10 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'Pages'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14 + 2 * pad,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 10 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'Projects'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14 + 2 * pad,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 10 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'Shop'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14 + 2 * pad,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
