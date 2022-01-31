import 'package:flutter/material.dart';
import 'package:flutter_ui/class/flowerData.dart';

class Bangladesh extends StatelessWidget {
  final int index;
  const Bangladesh({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The details page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to '),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '${FlowerData().items[index]['name']}',
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
