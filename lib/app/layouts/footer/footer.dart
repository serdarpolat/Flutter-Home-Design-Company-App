import 'package:flutter/material.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'footer_bottom.dart';
import 'footer_company.dart';
import 'footer_contact.dart';
import 'footer_info.dart';
import 'footer_sitemap.dart';
import 'footer_subscribde.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Metrics.width(context),
      height: 700,
      color: greenBg,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const FooterContact(),
          SizedBox(
            width: Metrics.width(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: Metrics.width(context),
                  child: Column(
                    children: [
                      const SizedBox(height: 260),
                      BaseContainer(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            FooterInfo(),
                            FooterSiteMap(),
                            FooterCompany(),
                            FooterSubscribe(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
                const FooterBottom(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
