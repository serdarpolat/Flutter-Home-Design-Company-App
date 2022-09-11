import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/app/widgets/icon_btn.dart';
import 'package:ventura/core/core.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> links = ['About Us', 'Services', 'Projects', 'Blog', 'Contact Us'];
    return Column(
      children: [
        BaseContainer(
          child: SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'Logo.png'.icon,
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                    ),
                    const SizedBox(width: 16),
                    'Ventura'.poppins(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      height: 1.5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    if (Metrics.isDesktop(context) || Metrics.isTablet(context))
                      ...List.generate(links.length, (index) {
                        final link = links[index];

                        return Padding(
                          padding: EdgeInsets.only(left: index != 0 ? 24 : 0),
                          child: TextButton(
                            onPressed: () {},
                            child: link.poppins(
                              fontWeight: FontWeight.w500,
                              color: white,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        );
                      }),
                    if (Metrics.isDesktop(context) || Metrics.isTablet(context))
                      Container(
                        height: 30,
                        width: 3,
                        color: white.withOpacity(0.5),
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                      ),
                    IconBtn(
                      icon: FontAwesomeIcons.magnifyingGlass,
                      onTap: () {},
                    ),
                    if (Metrics.isMobile(context) || Metrics.isCompact(context))
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: IconBtn(
                          icon: FontAwesomeIcons.bars,
                          onTap: () {},
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: Metrics.width(context),
          height: 1,
          color: greenlight,
        ),
      ],
    );
  }
}
