import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ventura/core/core.dart';

class HeaderLeft extends StatelessWidget {
  const HeaderLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          'Bringing interiors to life'.stixTwoText(
            fontSize: 90,
            fontWeight: FontWeight.bold,
            color: greenlight,
            height: 1.1,
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(right: 68.0),
            child: 'Understanding the person or people living in a home is a far greater need in design.'.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: white,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 52),
          Container(
            height: 72,
            margin: const EdgeInsets.only(right: 72),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextField(
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: textPrimary,
                        fontWeight: FontWeight.bold,
                        height: 1.30,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type your email',
                        hintStyle: GoogleFonts.poppins(
                          color: greenBg,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: orange,
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 72 - 16,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              'Get a quote'.poppins(
                                color: white,
                                height: 1.75,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(width: 10),
                              const Icon(
                                FontAwesomeIcons.chevronRight,
                                color: white,
                                size: 12,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
