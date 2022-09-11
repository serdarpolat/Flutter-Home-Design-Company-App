import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:ventura/core/core.dart';

class ExperiencesInfoItem extends StatelessWidget {
  const ExperiencesInfoItem({
    Key? key,
    required this.pad,
    required this.count,
    required this.title,
  }) : super(key: key);

  final String count;
  final String title;
  final double pad;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GradientText(
          count,
          style: GoogleFonts.poppins(
            fontSize: 30 + 6 * pad,
            fontWeight: FontWeight.bold,
          ),
          colors: const [
            Color(0xffFEDB42),
            Color(0xff94DA44),
          ],
        ),
        SizedBox(height: 10 + 6 * pad),
        title.poppins(
          color: white,
          fontWeight: FontWeight.w600,
          fontSize: 14 + 2 * pad,
        ),
      ],
    );
  }
}
