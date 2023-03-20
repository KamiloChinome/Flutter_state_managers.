import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managers/models/usuario_model.dart';

import '../bloc/user/user_bloc.dart';

class OneScreen extends StatelessWidget {
  
  const OneScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'pagina2')
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (_, state) {
          return state.existUser
          ? UserInformation(user: state.user!,)
          : const Center(child: Text('No hay informacion'));
        },
      )
      
    );
  }
}

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key, required this.user,
  });
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(title: Text('Nombre: ${user.name}'),),
          ListTile(title: Text('Edad: ${user.age}'),),
          const Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),
          ...user.professions.map((prof) => ListTile(title: Text(prof),))
        ],
      ),
    );
  }
}