import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/core/core.dart';

class CompletedProjectImage extends StatelessWidget {
  const CompletedProjectImage({
    Key? key,
    required this.isImageLeft,
    required this.item,
  }) : super(key: key);

  final bool isImageLeft;
  final CompletedProjectItemModel item;

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));
    final pad1 = normalize(min: 576, max: 976, data: Metrics.width(context));

    return Expanded(
      flex: 3,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: isImageLeft ? ((36 * pad1) + 54 * pad) : 0, left: isImageLeft ? 0 : ((36 * pad1) + 54 * pad)),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(52),
                    ),
                    child: Image.network(
                      item.imgPath,
                      fit: BoxFit.cover,
                      height: 320,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -20,
            left: 30,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        offset: const Offset(0, 3),
                        blurRadius: 6,
                      )
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.mapPin,
                        color: orange,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      item.location.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ],
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
