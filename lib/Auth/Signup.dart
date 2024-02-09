import 'package:complate/Auth/Login.dart';
import 'package:complate/Requirments/Requirments.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/signup.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20, fontFamily: bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _username,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      label: Text('Username'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _phone,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      label: Text('Phone'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(
                  height: 10,
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
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Sign up',
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
                  'Already Have An Account? ',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: bold, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    'Login ',
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
