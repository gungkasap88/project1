import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/ListScreen.dart';
import 'package:project1/bottom.dart';
import 'package:project1/gridview.dart';
import 'package:project1/list.dart';
import 'package:project1/list_latihan.dart';
import 'package:project1/registerScreen.dart';
import 'package:project1/stack.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/loginicon.png", width: 80, height: 80,),
            const SizedBox(height: 40,),
            const Text("LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 20),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Contoh : indocyber@gmail.com"
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 16,),
            TextButton(
              onPressed:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => registerScreen()
                    )
                );
              },
              child: Text(
              "Create a new account",
              style: TextStyle(
                color: Colors.lightBlueAccent,
              ),
            ),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListScreen()
                      )
                  );
                },
                child: const Text("Login"))
          ],
        ),
      )

    );
  }
}
