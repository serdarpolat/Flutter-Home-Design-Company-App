import 'package:flutter/material.dart';
import 'package:ventura/app/components/appbar/appbar.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'header_left.dart';
import 'header_right.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required GlobalKey<State<StatefulWidget>> headerKey,
  })  : _headerKey = headerKey,
        super(key: key);

  final GlobalKey<State<StatefulWidget>> _headerKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _headerKey,
      width: Metrics.width(context),
      height: 720,
      color: greenBorder,
      child: Column(
        children: [
          const Appbar(),
          Expanded(
            child: BaseContainer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HeaderLeft(),
                  HeaderRight(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
