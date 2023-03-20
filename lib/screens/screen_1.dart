import 'package:flutter/material.dart';
import 'package:flutter_state_managers/services/usuario_service.dart';

import '../models/usuario_model.dart';

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
      body: StreamBuilder(
        stream: usuarioService.userStream,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
        return snapshot.hasData
        ?  UserInformation(usuario: usuarioService.user,)
        : const Center(child: Text('no info'),);
        },
      ),
    );
  }
}

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key, required this.usuario,
  });
  final Usuario? usuario;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(title: Text('Nombre: ${usuario!.name}'),),
          ListTile(title: Text('Edad: ${usuario!.age}'),),
          const Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(title: Text(usuario!.professions[0]),),
          ListTile(title: Text(usuario!.professions[1]),),
          ListTile(title: Text(usuario!.professions[2]),),
          StreamBuilder(
            stream: usuarioService.counterStream,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return  Text("${usuarioService.counter}");
            },
          )
        ],
      ),
    );
  }
}