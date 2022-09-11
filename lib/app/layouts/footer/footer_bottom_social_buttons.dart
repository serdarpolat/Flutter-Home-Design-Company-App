import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/core/core.dart';

class FooterBottomSocialButtons extends StatelessWidget {
  const FooterBottomSocialButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: Metrics.isMobile(context) ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Material(
          color: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff988968)),
          ),
          child: InkWell(
            onTap: () {},
            child: const SizedBox(
              height: 40,
              width: 40,
              child: Center(
                child: Icon(
                  FontAwesomeIcons.facebookF,
                  size: 20,
                  color: Color(0xff988968),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Material(
          color: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff988968)),
          ),
          child: InkWell(
            onTap: () {},
            child: const SizedBox(
              height: 40,
              width: 40,
              child: Center(
                child: Icon(
                  FontAwesomeIcons.twitter,
                  size: 20,
                  color: Color(0xff988968),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Material(
          color: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff988968)),
          ),
          child: InkWell(
            onTap: () {},
            child: const SizedBox(
              height: 40,
              width: 40,
              child: Center(
                child: Icon(
                  FontAwesomeIcons.linkedinIn,
                  size: 20,
                  color: Color(0xff988968),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
