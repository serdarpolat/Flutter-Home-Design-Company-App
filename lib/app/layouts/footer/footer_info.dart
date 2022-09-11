import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 20 + 10 * pad),
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
            SizedBox(height: 24 + 8 * pad),
            '+1 (885) 589 69 85'.poppins(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 14 + 4 * pad,
              height: 1.5,
            ),
            SizedBox(height: 16 + 8 * pad),
            'info@ventura.com'.poppins(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 14 + 4 * pad,
              height: 1.5,
            ),
            SizedBox(height: 16 + 8 * pad),
            'Ms. Alice Smith Apartment 1C 213 Derrick Street Boston, MA 02130 USA'.poppins(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 13 + 3 * pad,
              height: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
