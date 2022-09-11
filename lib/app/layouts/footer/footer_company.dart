import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class FooterCompany extends StatelessWidget {
  const FooterCompany({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Company'.poppins(
            fontWeight: FontWeight.bold,
            color: white,
            fontSize: 24,
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: () {},
            child: 'About'.poppins(
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
            child: 'Blog'.poppins(
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
            child: 'Gallery'.poppins(
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
            child: 'Careere'.poppins(
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
