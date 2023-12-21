
import 'package:flutter/material.dart';

class SliderCustom extends StatefulWidget{
  const SliderCustom({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SliderCustomState();
  }
}
class _SliderCustomState extends State<SliderCustom>{
  @override
  Widget build(BuildContext context) {
    return
      SliderTheme(
        data: SliderTheme.of(context).copyWith(
            trackHeight: 2,
            valueIndicatorColor: Colors.white,
            tickMarkShape:const RoundSliderTickMarkShape(tickMarkRadius: 0),
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 6
            ),
            overlayShape: SliderComponentShape.noOverlay,

        ),
        child: Slider(
          value: 20,
          min: 0,
          max: 100,
          activeColor: Colors.white,
          inactiveColor: Colors.green,
          divisions: 100,
          onChanged: (double value) {  },
          // label: ratting.toString(),
          // onChanged: (value) {
          //   if (onRatting != null) {
          //     onRatting!(value);
          //   }
          // },
        ),
      );
  }

}