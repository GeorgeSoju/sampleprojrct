import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            theme: ThemeData(primarySwatch: Colors.red),
            useInheritedMediaQuery: true,
            home: loginpage(),
            debugShowCheckedModeBanner: false,
          )));
}

class loginpage extends StatelessWidget {
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
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
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_box_sharp),
                    hintText: "username",
                    labelText: "username",
                    helperText: 'username must be an email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: const Icon(Icons.visibility_off),
                      hintText: 'password',
                      labelText: "password",
                      helperText: 'password must contain 8 characters',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15),
                  )),
            ),
            TextButton(
                onPressed: () {}, child: Text('Not a user?? Sign up here!!'))
          ],
        ),
      ),
    );
  }
}
