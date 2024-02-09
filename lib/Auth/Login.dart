import 'package:complate/Auth/Signup.dart';
import 'package:complate/Customer/HomeScreen.dart';
import 'package:complate/Customer/nav.dart';
import 'package:complate/Requirments/Requirments.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/login.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, fontFamily: bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      label: Text('Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _password,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                        fontSize: 15, fontFamily: bold, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nav()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontFamily: bold, fontSize: 20),
                    ),
                    color: blue,
                    minWidth: double.infinity,
                    padding: EdgeInsets.all(15),
                    elevation: Checkbox.width,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t Have An Account? ',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: bold, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text(
                    'Sign up ',
                    style:
                        TextStyle(color: blue, fontFamily: bold, fontSize: 16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
