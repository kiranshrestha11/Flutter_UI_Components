import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({Key? key, required this.isdark}) : super(key: key);
  final bool isdark;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          thumbShape: SliderComponentShape.noThumb,
          trackHeight: 4.0,
          trackShape: const RectangularSliderTrackShape(),
          overlayShape: SliderComponentShape.noOverlay),
      child: Slider(
          activeColor: isdark ? Colors.white : const Color(0xffA823F9),
          inactiveColor:
              isdark ? const Color(0xff424242) : const Color(0xffEBEBEB),
          value: 0.5,
          onChanged: (value) {}),
    );
  }
}
