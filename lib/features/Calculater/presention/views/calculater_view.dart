import 'package:cat_project/features/Calculater/presention/views/widgets/calculater_body.dart';
import 'package:flutter/material.dart';

class CalculaterView extends StatelessWidget {
  const CalculaterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        centerTitle: true,
actions: [
  IconButton(onPressed: () {}, icon: const Icon(Icons.add,color: Colors.black,))
],
      ),
      body: const CalculaterBody(),
    );
  }
}
