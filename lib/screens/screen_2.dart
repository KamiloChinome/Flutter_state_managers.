import 'package:flutter/material.dart';

class TwoScreen extends StatelessWidget {
  
  const TwoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},  
              color: Colors.blue,
              child: const Text('Establecer usuario', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              onPressed: () {},  
              color: Colors.blue,
              child: const Text('Cambiar edad', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              onPressed: () {},  
              color: Colors.blue,
              child: const Text('Añadir profesion', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}