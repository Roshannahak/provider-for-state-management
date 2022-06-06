import 'package:test_provider/api/api_client.dart';
import 'package:test_provider/model/user_list_model.dart';

class GetUserListController {
  static Future<dynamic> FetchUserList() async {
    var response = await ApiClient.getServices().getUserList();
    UserListModel userListModel = userListModelFromJson(response);
    return userListModel.records;
  }
}
