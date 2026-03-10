
import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatelessWidget {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: InputDecoration(labelText:"Email")),
            TextField(controller: passwordController, decoration: InputDecoration(labelText:"Password"), obscureText: true),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () async {

                final res = await auth.login(emailController.text,passwordController.text);

                Navigator.push(context, MaterialPageRoute(builder: (_)=>DashboardScreen()));

              }
            )
          ]
        )
      )
    );

  }

}
