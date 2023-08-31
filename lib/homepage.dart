import 'package:djcsi1/task_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 230, 230),
      body: Container(
        child: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: const Text(
                'FocusList',
                style: TextStyle(
                  fontSize: 60,
                  color: Color.fromARGB(255, 248, 199, 40),
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Image.asset('assets/homepage2.png'),
          const Text(
            'Welcome to FocusList',
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: const Text(
              'FocusList will help you to stay \norganized and perform your tasks \nmuch faster.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 231, 162, 41),
                  elevation: 20,
                  shadowColor: Color.fromARGB(255, 231, 171, 68)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
