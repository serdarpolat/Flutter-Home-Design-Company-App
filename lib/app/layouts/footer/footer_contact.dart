import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/core/core.dart';

import 'meter_item.dart';

class FooterContact extends StatelessWidget {
  const FooterContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 576, max: 1440, data: Metrics.width(context));

    return Positioned(
      top: -180,
      child: SizedBox(
        width: Metrics.width(context),
        child: Column(
          children: [
            SizedBox(
              width: Metrics.isDesktop(context) ? 1440 : Metrics.width(context),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 0 : 24),
                child: Container(
                  height: 360,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffFEDB42), Color(0xff94DA44)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: !Metrics.isMobile(context)
                            ? Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        'Contact'.msMadi(
                                          fontSize: 36 + 24 * pad,
                                          color: greenBorder,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 64 * pad),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      'Let\'s Work'.stixTwoText(
                                        fontSize: 40 + 24 * pad,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -0.5,
                                      ),
                                      'together'.stixTwoText(
                                        fontSize: 40 + 24 * pad,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -0.5,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 64 * pad),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Material(
                                          color: orange,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 24 + 12 * pad, vertical: 12 + 8 * pad),
                                              child: Row(
                                                children: [
                                                  'Contact Us'.poppins(
                                                    fontSize: 14 + 2 * pad,
                                                    fontWeight: FontWeight.w500,
                                                    color: white,
                                                    height: 1.5,
                                                  ),
                                                  SizedBox(width: 8 + 4 * pad),
                                                  Icon(
                                                    FontAwesomeIcons.chevronRight,
                                                    color: white,
                                                    size: 14 + 2 * pad,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  'Contact'.msMadi(
                                    fontSize: 36 + 24 * pad,
                                    color: greenBorder,
                                  ),
                                  const SizedBox(height: 24),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      'Let\'s Work'.stixTwoText(
                                        fontSize: 40 + 24 * pad,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -0.5,
                                      ),
                                      'together'.stixTwoText(
                                        fontSize: 40 + 24 * pad,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -0.5,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 24),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Material(
                                        color: orange,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 24 + 12 * pad, vertical: 12 + 8 * pad),
                                            child: Row(
                                              children: [
                                                'Contact Us'.poppins(
                                                  fontSize: 14 + 2 * pad,
                                                  fontWeight: FontWeight.w500,
                                                  color: white,
                                                  height: 1.5,
                                                ),
                                                SizedBox(width: 8 + 4 * pad),
                                                Icon(
                                                  FontAwesomeIcons.chevronRight,
                                                  color: white,
                                                  size: 14 + 2 * pad,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                      ),
                      SizedBox(
                        height: 88,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(100, (index) {
                            final isTall = index % 2 != 0;
                            final metric = (index != 0 && (index + 1) % 10 == 0) ? '${(index + 1) / 2}' : '';

                            return MeterItem(isTall: isTall, metric: metric);
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
