import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/user_model.dart';

class MyScaffoldBody extends StatefulWidget {
  @override
  _MyScaffoldBodyState createState() => _MyScaffoldBodyState();
}

class _MyScaffoldBodyState extends State<MyScaffoldBody> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: TextField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'UserName',
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              children: [
                Text('Do you Agree?'),
                Checkbox(
                  value: agree,
                  onChanged: (bool value) {
                    setState(() {
                      agree = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                setState(() {
                  Provider.of<UserModel>(context, listen: false).setUserName(userNameController.text);
                  Provider.of<UserModel>(context, listen: false).setPassword(passwordController.text);
                  Provider.of<UserModel>(context, listen: false).setAgree(agree);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
