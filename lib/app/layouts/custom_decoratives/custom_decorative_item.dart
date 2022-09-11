import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class CustomDecorativeItem extends StatelessWidget {
  const CustomDecorativeItem({
    Key? key,
    required this.gridItem,
  }) : super(key: key);

  final DecorativeItemModel gridItem;

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 576, max: 1440, data: Metrics.width(context));

    return Container(
      margin: EdgeInsets.only(bottom: 12 + 12 * pad),
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 285 / 230,
            child: Image.network(
              gridItem.imgPath,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  gridItem.title.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      gridItem.subtitle.poppins(
                        fontSize: 18,
                      ),
                      gridItem.price.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
