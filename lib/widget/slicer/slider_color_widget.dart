import 'package:flutter/material.dart';

class SliderColorWidget extends StatefulWidget {
  @override
  _SliderColorWidgetState createState() => _SliderColorWidgetState();
}

class _SliderColorWidgetState extends State<SliderColorWidget> {
  double value = 50;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: value,
            min: 0,
            max: 100,
            onChanged: (value) => setState(
              () => this.value = value,
            ),
          ),
        ],
      );
}
