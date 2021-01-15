import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reusable_widgets_app_bars/components/default_button.dart';
import 'package:reusable_widgets_app_bars/components/default_button_text_link.dart';
import 'package:reusable_widgets_app_bars/components/default_text_field.dart';
import 'package:reusable_widgets_app_bars/utils/AppSettings.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController, _passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              /*TextField(
                controller: _emailController,
              ),*/
              DefaultTextField(
                controller: _emailController,
                helpText: 'Email',
                hintText: 'Email',
                prefixIcon: Icons.email,
              ),
              DefaultTextField(
                controller: _passwordController,
                helpText: 'Password',
                hintText: 'Password',
                isPassword: true,
                prefixIcon: Icons.lock_open,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultButton(
                      onPress: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          }),
                        );
                      },
                      text: 'LOGIN',
                      //color: Colors.green,
                      color: context.watch<AppSettings>().appColor,
                    ),
                  ),
                ],
              ),
              DefaultButtonTextLink(
                onPress: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }),
                  );
                },
                text: 'Forgot Password?',
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
