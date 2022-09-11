import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class FooterBottomLicence extends StatelessWidget {
  const FooterBottomLicence({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: Metrics.isMobile(context) ? MainAxisAlignment.center : MainAxisAlignment.start,
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
    );
  }
}
