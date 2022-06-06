import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/user_list_model.dart';
import '../provider/user_list_provider.dart';
import '../widgets/user_list_viewholder.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserListProvider>(context);
    //provider.getUserList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: provider.length,
        itemBuilder: (context, index) {
          Record record = provider.user[index];
          Student? student = record.student;
          return UserListViewHolder(
            firstName: student?.firstName,
            lastName: student?.lastName,
            // branch: student?.branch,
            // semester: student?.semester,
            // course: student?.course,
          );
        },
      ),
    );
  }
}
