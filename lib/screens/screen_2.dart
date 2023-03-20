import 'package:flutter/material.dart';
import 'package:flutter_state_managers/models/usuario_model.dart';
import 'package:flutter_state_managers/services/usuario_service.dart';

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
              onPressed: () {
                final newUser = Usuario(age: 20, name: 'Kamilo', professions: ['ing', 'abogado', 'medicina'], );
                usuarioService.loadUser(newUser);
              },  
              color: Colors.blue,
              child: const Text('Establecer usuario', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              onPressed: () {
                usuarioService.changeAge(10);
              },  
              color: Colors.blue,
              child: const Text('Cambiar edad', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              onPressed: () {
                usuarioService.changeCounter();
              },  
              color: Colors.blue,
              child: const Text('Aumentar contador', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}