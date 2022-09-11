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
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));
    final bool isBigScreen = Metrics.isDesktop(context) || Metrics.isTablet(context);

    return Expanded(
      child: Column(
        crossAxisAlignment: isBigScreen ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderLeftTitle(isBigScreen: isBigScreen),
          const SizedBox(height: 24),
          HeaderLeftSubtitle(pad: pad, isBigScreen: isBigScreen),
          const SizedBox(height: 52),
          HeaderLeftInput(pad: pad),
        ],
      ),
    );
  }
}

class HeaderLeftInput extends StatelessWidget {
  const HeaderLeftInput({
    Key? key,
    required this.pad,
  }) : super(key: key);

  final double pad;

  @override
  Widget build(BuildContext context) {
    final bool isBigScreen = Metrics.isDesktop(context) || Metrics.isTablet(context);
    final pad1 = isBigScreen ? 0.0 : normalize(min: 576, max: 976, data: Metrics.width(context));

    return Container(
      height: 72,
      margin: EdgeInsets.only(right: (72 * pad) + (120 * pad1), left: 120 * pad1),
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
    );
  }
}

class HeaderLeftSubtitle extends StatelessWidget {
  const HeaderLeftSubtitle({
    Key? key,
    required this.pad,
    required this.isBigScreen,
  }) : super(key: key);

  final double pad;
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    final pad1 = isBigScreen ? 0.0 : normalize(min: 576, max: 976, data: Metrics.width(context));
    return Padding(
      padding: EdgeInsets.only(right: (68.0 * pad) + (120 * pad1), left: 120 * pad1),
      child: 'Understanding the person or people living in a home is a far greater need in design.'.poppins(
        textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: white,
        height: 1.5,
      ),
    );
  }
}

class HeaderLeftTitle extends StatelessWidget {
  const HeaderLeftTitle({Key? key, required this.isBigScreen}) : super(key: key);
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    final pad1 = isBigScreen ? 0.0 : normalize(min: 576, max: 976, data: Metrics.width(context));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120 * pad1),
      child: 'Bringing interiors to life'.stixTwoText(
        textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
        fontSize: 90,
        fontWeight: FontWeight.bold,
        color: greenlight,
        height: 1.1,
      ),
    );
  }
}
