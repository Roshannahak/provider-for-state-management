import 'package:flutter/widgets.dart';
import 'package:test_provider/controller/getUserListController.dart';
import 'package:test_provider/model/user_list_model.dart';

class UserListProvider extends ChangeNotifier {
  List<Record> userList = [];

  int get length => userList.length;

  List<Record> get user => userList;

  getUserList() async {
    userList = await GetUserListController.FetchUserList();
    notifyListeners();
  }
}
