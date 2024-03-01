import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary,
        ),

        backgroundColor: Theme.of(context).colorScheme.primary,
        // automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Center(
              child:
                  Lottie.asset('assets/lottie/ComingSoon.json', width: 280))),
    );
  }
}
