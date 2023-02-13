import 'package:flutter/material.dart';
import 'package:slide_transition_example/page_two.dart';
import 'package:slide_transition_example/slide_transition/app_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, AppRoute.slideTansition(const PageTwo()));
                },
                child: const Text('next page')),
          ),
        ],
      ),
    );
  }
}
