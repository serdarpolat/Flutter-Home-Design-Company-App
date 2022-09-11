import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

class ImageSliderController extends StatefulWidget {
  const ImageSliderController({
    Key? key,
    required this.currentPage,
    required this.images,
    this.prev,
    this.next,
  }) : super(key: key);

  final int currentPage;
  final List<String> images;
  final Function()? prev;
  final Function()? next;

  @override
  State<ImageSliderController> createState() => _ImageSliderControllerState();
}

class _ImageSliderControllerState extends State<ImageSliderController> {
  double sliderWidth = 180;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isFirst = widget.currentPage == 0;
    bool isLast = widget.currentPage == widget.images.length - 1;
    return BaseContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          (widget.currentPage < 9 ? '0${widget.currentPage + 1}' : '${widget.currentPage + 1}').poppins(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 180,
            height: 3,
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 240),
                    width: (sliderWidth / widget.images.length) * (widget.currentPage + 1),
                    height: 3,
                    decoration: BoxDecoration(
                      color: textPrimary,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          (widget.images.length < 10 ? '0${widget.images.length}' : '${widget.images.length}').poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          const SizedBox(width: 16),
          Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: isFirst ? Colors.grey : textPrimary),
            ),
            child: InkWell(
              onTap: widget.prev,
              child: SizedBox(
                width: 36,
                height: 36,
                child: Center(
                  child: Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 20,
                    color: isFirst ? Colors.grey : textPrimary,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: isLast ? Colors.grey : textPrimary),
            ),
            child: InkWell(
              onTap: widget.next,
              child: SizedBox(
                width: 36,
                height: 36,
                child: Center(
                  child: Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 20,
                    color: isLast ? Colors.grey : textPrimary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
