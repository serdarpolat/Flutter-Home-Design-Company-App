import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class HowItWorksCardItem extends StatefulWidget {
  const HowItWorksCardItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final HowItWorkCardModel item;

  @override
  State<HowItWorksCardItem> createState() => _HowItWorksCardItemState();
}

class _HowItWorksCardItemState extends State<HowItWorksCardItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 300 / 200,
        child: MouseRegion(
          onEnter: (val) => setState(() => isHover = true),
          onExit: (val) => setState(() => isHover = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 240),
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: isHover ? white : white.withOpacity(0),
              boxShadow: [
                BoxShadow(
                  color: isHover ? textPrimary.withOpacity(0.15) : textPrimary.withOpacity(0),
                  offset: const Offset(0, 6),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  widget.item.icon,
                  color: greenBg,
                ),
                const Spacer(),
                widget.item.title.poppins(
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                const SizedBox(height: 16),
                widget.item.subtitle.poppins(
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: greenBorder,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
