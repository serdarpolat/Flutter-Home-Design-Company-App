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
        padding: EdgeInsets.symmetric(vertical: 40 + 50 * normalize(min: 576, max: 1440, data: Metrics.width(context))),
        child: Metrics.isMobile(context)
            ? Column(
                children: [
                  SvgPicture.asset(
                    'Amazon.svg'.icon,
                    height: 40,
                  ),
                  const SizedBox(height: 32),
                  SvgPicture.asset(
                    'Autodesk.svg'.icon,
                    height: 40,
                  ),
                  const SizedBox(height: 32),
                  SvgPicture.asset(
                    'Google.svg'.icon,
                    height: 40,
                  ),
                  const SizedBox(height: 32),
                  SvgPicture.asset(
                    'Paypal.svg'.icon,
                    height: 40,
                  ),
                  const SizedBox(height: 32),
                  SvgPicture.asset(
                    'Webflow.svg'.icon,
                    height: 40,
                  ),
                ],
              )
            : Row(
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
