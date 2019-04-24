import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration:
                    InputDecoration(labelText: "User Id", hintText: "a@a.com"),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) return "Please fill in email address";
                },
                controller: emailController,
                // onSaved: (value) {
                //   print(value);
                // },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password", hintText: "your password"),
                obscureText: true,
                controller: passwordController,
                // onSaved: (value) {
                //   print(value);
                // },
              ),
              RaisedButton(
                child: Text("Login"),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    //pass
                    // _formKey.currentState.save();
                    print(emailController.text);
                    print(passwordController.text);
                  } else {
                    //not pass
                  }
                },
              ),
              FlatButton(
                child: Text("Register new account"),
                onPressed: () => {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
