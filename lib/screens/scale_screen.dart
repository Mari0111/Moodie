import 'package:flutter/material.dart';
import 'package:moodie/screens/memo_screen.dart';
import 'package:moodie/widget/slicer/slider_color_widget.dart';

class ScaleScreen extends StatelessWidget {
  const ScaleScreen({Key? key}) : super(key: key);

  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'How do you feel?',
              style: TextStyle(fontSize: 25),
            ),
            Image.asset('images/plant2.png', width: 300, height: 300),
            SliderColorWidget(),
            Container(
              color: Colors.white,
              child: Center(
                child: ElevatedButton(
                  style: style,
                  child: Text('Next'),
                  onPressed: () {
                    print('test');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MemoScreen()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
