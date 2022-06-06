import 'package:flutter/material.dart';

class UserListViewHolder extends StatelessWidget {
  final firstName;
  final lastName;
  final branch;
  final semester;
  final course;
  const UserListViewHolder(
      {Key? key,
      this.firstName,
      this.lastName,
      this.branch,
      this.course,
      this.semester})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                offset: Offset(3, 3))
          ],
          border: Border.all(color: Colors.grey, width: 0.3),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$firstName $lastName",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Text(
            "$course $branch ${semester}th Semester",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
