import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

class Brands extends StatelessWidget {
  const Brands({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 90),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              'Amazon.svg'.icon,
              height: 40,
            ),
            SvgPicture.asset(
              'Autodesk.svg'.icon,
              height: 40,
            ),
            SvgPicture.asset(
              'Google.svg'.icon,
              height: 40,
            ),
            SvgPicture.asset(
              'Paypal.svg'.icon,
              height: 40,
            ),
            SvgPicture.asset(
              'Webflow.svg'.icon,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
