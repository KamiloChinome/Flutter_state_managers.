import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managers/bloc/user/user_bloc.dart';
import 'package:flutter_state_managers/models/usuario_model.dart';

class TwoScreen extends StatelessWidget {
  
  const TwoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context);
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                final newUser = User(age: 19, name: 'kamilo', professions: ['Ingeniero', 'economista', 'biologo']);
                userBloc.add(ActivateUser(newUser));
              },  
              color: Colors.blue,
              child: const Text('Establecer usuario', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              onPressed: () {
                userBloc.add(ChangeUserAge(50));
              },  
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