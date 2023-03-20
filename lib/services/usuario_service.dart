import 'dart:async';

import 'package:flutter_state_managers/models/usuario_model.dart';

class _UserService{
  Usuario? _user;
  int _counter = 0;

  final StreamController<Usuario> _userStreamController = StreamController.broadcast();
  final StreamController<int> _counterStreamController = StreamController.broadcast();

  void loadUser(Usuario user){
    _user = user;
    _userStreamController.add(user);
  }

  void changeAge(int age){
    _user!.age = age;
  }

  void changeCounter(){
    _counter == _counter++;
    _counterStreamController.add(_counter);
  }

  int get counter => _counter;
  Usuario? get user => _user;
  bool get userExist => (_user != null) ? true : false;
  Stream<Usuario> get userStream => _userStreamController.stream;
  Stream<int> get counterStream => _counterStreamController.stream;
}

final usuarioService = _UserService();