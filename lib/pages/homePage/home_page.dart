import 'package:flutter/material.dart';
import 'package:icmr/utils/custom_app_bar.dart';
import 'package:icmr/utils/show_snack_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showSnackBar(context, 'Hello, World!');
          },
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
