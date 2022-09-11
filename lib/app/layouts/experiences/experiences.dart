import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

class Experiences extends StatelessWidget {
  const Experiences({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Metrics.width(context),
      color: greenBg,
      child: Column(
        children: [
          BaseContainer(
            child: Column(
              children: [
                const SizedBox(height: 90),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                'https://images.unsplash.com/photo-1611967164521-abae8fba4668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 90,
                              right: -60,
                              child: Image.asset(
                                'Clock.png'.image,
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 60),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Ventura\'s'.msMadi(
                            color: orange,
                            fontSize: 52,
                          ),
                          'We design living spaces that are built to support your key life experience.'.stixTwoText(
                            color: white,
                            fontSize: 40,
                            height: 1.5,
                          ),
                          const SizedBox(height: 48),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GradientText(
                                    '10',
                                    style: GoogleFonts.poppins(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    colors: const [
                                      Color(0xffFEDB42),
                                      Color(0xff94DA44),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  'years of experience'.poppins(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GradientText(
                                    '220+',
                                    style: GoogleFonts.poppins(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    colors: const [
                                      Color(0xffFEDB42),
                                      Color(0xff94DA44),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  'completed projects'.poppins(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GradientText(
                                    '4.9',
                                    style: GoogleFonts.poppins(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    colors: const [
                                      Color(0xffFEDB42),
                                      Color(0xff94DA44),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  'overall ratings'.poppins(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 90),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
