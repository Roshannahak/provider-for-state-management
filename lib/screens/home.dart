import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/model/user_list_model.dart';
import 'package:test_provider/provider/user_list_provider.dart';
import 'package:test_provider/screens/search.dart';
import 'package:test_provider/widgets/user_list_viewholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserListProvider>(context);
    provider.getUserList();
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
              icon: Icon(Icons.search))
        ],
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
            branch: student?.branch,
            semester: student?.semester,
            course: student?.course,
          );
        },
      ),
    );
  }
}
