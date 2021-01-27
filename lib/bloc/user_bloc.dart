import 'dart:async';

import 'package:http_for_flutter/models/user.dart';
import 'package:http_for_flutter/services/users_service.dart';

class UserBLoC {
  Stream<List<User>> get usersList async* {
    yield await UserService.browse();
  }

  final StreamController<int> _userCounter = StreamController<int>();

  Stream<int> get userCounter => _userCounter.stream;

  UserBLoC() {
    usersList.listen((list) => _userCounter.add(list.length));
  }
}
