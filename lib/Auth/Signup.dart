import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:complate/Auth/Login.dart'; // Assuming Login.dart is correctly implemented
import 'package:complate/Requirments/Requirments.dart'; // Assuming Requirments.dart is correctly implemented

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _username = TextEditingController();

  String? _usernameError;
  String? _passwordError;
  String? _emailError;
  String? _phoneError;

  Future<void> _performSignup(BuildContext context) async {
    setState(() {
      _usernameError = _validateUsername(_username.text);
      _passwordError = _validatePassword(_password.text);
      _emailError = _validateEmail(_email.text);
      _phoneError = _validatePhone(_phone.text);
    });

    if (_usernameError != null ||
        _passwordError != null ||
        _emailError != null ||
        _phoneError != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fix validation errors.')),
      );
      return;
    }

    try {
      final response = await http.post(
        Uri.parse(
            'http://192.168.0.108/Flutter/signup.php'), // Replace with your API endpoint
        body: {
          'username': _username.text,
          'email': _email.text,
          'password': _password.text,
          'phone': _phone.text,
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);

        if (data['status'] != 'error') {
          // Show success alert box
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Success"),
                content: Text(data['message']),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        } else {
          // Show error alert box
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Error"),
                content: Text(data['message']),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        }
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception: $e');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Exception"),
            content: Text("An exception occurred. Please try again later."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a username.';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.length < 8) {
      return 'Password must be at least 8 characters long.';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || !value.contains('@')) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.length != 11 || int.tryParse(value) == null) {
      return 'Please enter a valid phone number with 11 digits.';
    }
    return null;
  }

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
                    style: TextStyle(fontSize: 20, fontFamily: 'bold'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    errorText: _usernameError,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: _phone,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: 'Phone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    errorText: _phoneError,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    errorText: _emailError,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    errorText: _passwordError,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: MaterialButton(
                    onPressed: () {
                      _performSignup(context); // Pass context here
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'bold',
                          fontSize: 20),
                    ),
                    color: Colors.blue,
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
                      color: Colors.grey, fontFamily: 'bold', fontSize: 14),
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
                    style: TextStyle(
                        color: Colors.blue, fontFamily: 'bold', fontSize: 16),
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
