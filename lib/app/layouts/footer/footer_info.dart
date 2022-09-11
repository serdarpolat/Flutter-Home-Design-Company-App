import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'Logo.png'.icon,
                  width: 36,
                  height: 36,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  isAntiAlias: true,
                ),
                const SizedBox(width: 16),
                'Ventura'.poppins(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  height: 1.5,
                ),
              ],
            ),
            const SizedBox(height: 32),
            '+1 (885) 589 69 85'.poppins(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
              height: 1.5,
            ),
            const SizedBox(height: 24),
            'info@ventura.com'.poppins(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
              height: 1.5,
            ),
            const SizedBox(height: 24),
            'Ms. Alice Smith Apartment 1C 213 Derrick Street Boston, MA 02130 USA'.poppins(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
