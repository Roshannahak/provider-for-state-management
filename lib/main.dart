import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/provider/user_list_provider.dart';
import 'package:test_provider/screens/home.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ListenableProvider(create: (context) => UserListProvider())
        ],
        child: MaterialApp(
          title: "provider app",
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
      ),
    );
