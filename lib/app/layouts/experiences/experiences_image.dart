import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class ExperiencesImage extends StatelessWidget {
  const ExperiencesImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                'https://images.unsplash.com/photo-1611967164521-abae8fba4668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 90,
              right: -60,
              child: Image.asset(
                'Clock.png'.image,
                width: 120,
                height: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
