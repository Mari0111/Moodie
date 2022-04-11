import 'package:flutter/material.dart';
import 'package:moodie/screens/scale_screen.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({Key? key}) : super(key: key);

  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'images/flower3.png',
            ),
            const Center(
              child: Text(
                'Hello!',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black54,
                ),
              ),
            ),
            const Text(
              'Enter your name:',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: 'Write your name here!',
                  helperText: 'Keep it short, this is just a demo.',
                  labelText: 'Username',
                  prefixText: ' ',
                ),
              ),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              style: style,
              onPressed: () {
                print('second screen');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScaleScreen()));
              },
              child: const Text('Let\'s get started!'),
            ),
          ],
        ),
      ),
    );
  }
}
