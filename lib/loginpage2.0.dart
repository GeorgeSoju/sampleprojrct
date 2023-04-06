import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>  MaterialApp(
      useInheritedMediaQuery: true,
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bady-abbas-hxi_yRxODNc-unsplash.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 20,left: 110),
                  child: Image.asset('assets/images/health.png',height: 100,width: 100,),
                ),

                  // Add your login page content here
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0,top: 20,bottom: 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0,top: 20,bottom: 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
                  ),
                    onPressed: () {},
                    child: const Text('Login',style: TextStyle(color: Colors.white),),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
