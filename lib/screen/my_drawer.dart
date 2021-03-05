import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/user_model.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    String _userName = Provider.of<UserModel>(context).userName ?? 'Empty User';
    String _password = Provider.of<UserModel>(context).password ?? 'Empty User';
    bool _agree = Provider.of<UserModel>(context).agree ?? false;

    return Drawer(
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('UserName : $_userName'),
              Text('Password : $_password'),
              Text('isAgree? : ${_agree ? 'Agree' : 'disAgree'}')
            ],
          ),
        ),
      ),
    );
  }
}
