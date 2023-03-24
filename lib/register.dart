import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'loginpage with validation.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true; // for checking pass is visible or not
  var confirmpass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: SingleChildScrollView(
            child: Form(
                key: formkey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50, top: 20),
                        child: Image.asset(
                          "assets/icons/249177_social media_reddit_social_icon.png",
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.account_box_sharp),
                              hintText: "username",
                              labelText: "username",
                              helperText: 'username must be an email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          validator: (uname) {
                            if (uname!.isEmpty ||
                                !uname.contains('@') ||
                                !uname.contains('.')) {
                              return 'enter a valid username';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            obscureText: showpass,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password),
                                suffixIcon:  IconButton(onPressed: (){
                                  setState(() {
                                    if (showpass){
                                      showpass= false;
                                    }else{
                                      showpass = true;
                                    }
                                  });
                                },icon: Icon(showpass== true? Icons.visibility_off: Icons.visibility),),
                                hintText: 'password',
                                labelText: "password",
                                helperText:
                                'password must contain 8 characters',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (password) {
                              confirmpass = password;
                              if (password!.isEmpty || password.length < 8) {
                                return 'enter a strong passsword';
                              } else {
                                return null;
                              }
                            }),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (cpass){
                            if(cpass== confirmpass || !cpass!.isEmpty){
                              return 'password mismatch';
                            }else{return null;
                            }
                          },
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration:  InputDecoration(
                            hintText: 'confirmed password',
                            labelText: 'confirmed password',
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              final valid = formkey.currentState!.validate();
                              if (valid) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => loginvalidation()));
                              }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 15),
                            )),
                      ),

                    ]))));
  }
}
