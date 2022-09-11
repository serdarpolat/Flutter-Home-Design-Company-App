import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

class FooterBottom extends StatelessWidget {
  const FooterBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Metrics.width(context),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: greenBorder,
          ),
        ),
      ),
      child: Column(
        children: [
          BaseContainer(
            child: SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      '© 2022'.poppins(
                        color: white,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                      ' Rylic Studio '.poppins(
                        color: orange,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                      ' All rights reserved.'.poppins(
                        color: white,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ],
                  ),
                  Row(
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
