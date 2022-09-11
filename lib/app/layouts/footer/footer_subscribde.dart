import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ventura/core/core.dart';

class FooterSubscribe extends StatelessWidget {
  const FooterSubscribe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Do you have a project?'.poppins(
            fontWeight: FontWeight.bold,
            color: white,
            fontSize: 24,
          ),
          const SizedBox(height: 24),
          'Leave your email and we will contact you as soon as possible'.poppins(
            color: white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 1.5,
            letterSpacing: 0.5,
          ),
          const SizedBox(height: 24),
          Container(
            height: 54,
            padding: const EdgeInsets.all(4),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
