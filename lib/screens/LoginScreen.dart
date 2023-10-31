// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_x_project/screens/home_screen.dart';

class LoginScreenWidget extends StatefulWidget {
   LoginScreenWidget({super.key});

  @override
   State <LoginScreenWidget> createState () => _LoginScreenWidget();
}

class _LoginScreenWidget extends State<LoginScreenWidget> {
  final _formKey = GlobalKey<FormState>();
  String _emailOrPhone = '';
  String _password = '';

  void _onLogin() {
    if (_formKey.currentState!.validate()) {
      // Perform login using the provided credentials
      print('Logging in with email/phone: $_emailOrPhone, password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Log in to Twitter',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone, email, or username',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email, phone number, or username';
                  }
                  return null;
                },
                onSaved: (value) => _emailOrPhone = value!,
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) => _password = value!,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>
                   HomeScreen(),
                  )
                  );
                },
                child: Text('Log in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
