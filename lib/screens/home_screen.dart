import 'package:flutter/material.dart';

import '../components/my_floating_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 15;

  void increase() {
    setState(() {
      counter++;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click Counter',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text('$counter',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
          ],
        ),
      ),
      backgroundColor: Colors.teal,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: CustomFloatingActions(
          increaseFn: increase, dicreaseFn: decrease, resetFn: reset),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function dicreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.dicreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        myFloatingButton(Colors.black, Icons.add, () {
          increaseFn();
        }),
        myFloatingButton(Colors.red, Icons.remove, () {
          dicreaseFn();
        }),
        myFloatingButton(Colors.green, Icons.refresh, () {
          resetFn();
        })
      ],
    );
  }
}
