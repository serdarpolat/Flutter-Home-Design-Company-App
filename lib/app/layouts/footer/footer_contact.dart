import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'meter_item.dart';

class FooterContact extends StatelessWidget {
  const FooterContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -180,
      child: SizedBox(
        width: Metrics.width(context),
        child: Column(
          children: [
            BaseContainer(
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
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                'Contact'.msMadi(
                                  fontSize: 60,
                                  color: greenBorder,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 64),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              'Let\'s Work'.stixTwoText(
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.5,
                              ),
                              'together'.stixTwoText(
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.5,
                              ),
                            ],
                          ),
                          const SizedBox(width: 64),
                          Expanded(
                            child: Row(
                              children: [
                                Material(
                                  color: orange,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
                                      child: Row(
                                        children: [
                                          'Contact Us'.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: white,
                                            height: 1.5,
                                          ),
                                          const SizedBox(width: 12),
                                          const Icon(
                                            FontAwesomeIcons.chevronRight,
                                            color: white,
                                            size: 16,
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
          ],
        ),
      ),
    );
  }
}
