import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //menghilangkan yellow cross
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://www.carlogos.org/logo/Renault-logo-2015-2048x2048.png", width: 80, height: 80,),
            const SizedBox(height: 36,),
            const Text("Register Account"),
            const SizedBox(height: 16,),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "contoh : indocyber@gmail.com",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2.0,
                )
              ),
            ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Username",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2.0,
                    )
                ),
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Pasword",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2.0,
                    )
                ),
              ),
            ),
            const SizedBox(height: 25,),
            ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                onPressed: () {
                  Navigator.pop(context);
                }, child: const Text("Register")
            ),
            const SizedBox(height: 6,), //sidebox buat jarak antar gambar atau tulisan
            //const Text("Already Have an Account?"),
            TextButton(
                onPressed:() {
                  Navigator.pop(context);
                }, child: Text(
                      "Already Have an Account?",
                        style: TextStyle(
                        color: Colors.lightBlueAccent,
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
