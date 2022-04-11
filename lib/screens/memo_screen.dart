import 'package:flutter/material.dart';

class MemoScreen extends StatelessWidget {
  const MemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Write how are you feeling today!',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'memo:',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Image.asset('images/note3.jpg', width: 400, height: 400),
            Container(
              color: Colors.white,
              child: Center(
                child: ElevatedButton(
                  child: Text('Finish :)'),
                  onPressed: () {
                    print('test');
                    Navigator.pop((context));
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
