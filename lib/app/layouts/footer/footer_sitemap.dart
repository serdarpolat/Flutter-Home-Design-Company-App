import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class FooterSiteMap extends StatelessWidget {
  const FooterSiteMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Site Map'.poppins(
            fontWeight: FontWeight.bold,
            color: white,
            fontSize: 24,
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: () {},
            child: 'Home'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: 'Pages'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: 'Projects'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: 'Shop'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
