import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class FooterCompany extends StatelessWidget {
  const FooterCompany({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Company'.poppins(
            fontWeight: FontWeight.bold,
            color: white,
            fontSize: 18 + 6 * pad,
          ),
          SizedBox(height: 18 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'About'.poppins(
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
            child: 'Blog'.poppins(
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
            child: 'Gallery'.poppins(
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
            child: 'Careere'.poppins(
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
