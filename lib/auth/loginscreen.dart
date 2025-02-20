import 'package:bcc1/auth/signupscreen.dart';
import 'package:flutter/material.dart';

import '../components/textfield.dart';
import '../screen/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 109,),
                  Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    'Selamat Datang Kembali!',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                  SizedBox(height: 77,),
                  Image.asset(
                    'assets/images/Logo Basic Shop 1.png',
                    width: 90,
                    height: 126.46,),
                  SizedBox(height: 77,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Username',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 13,),
                  Textfield(
                    controller: usernameController,
                    hintText: 'Supernova',
                    obscureText: false,
                    fillColor: Color(0XFFEEF6FC),
                  ),
                  SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Kata Sandi',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 13,),
                  Textfield(
                    controller: passwordController,
                    hintText: '********',
                    obscureText: false,
                    fillColor: Color(0XFFEEF6FC),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Lupa password?',
                        ),
                      )
                  ),
                  SizedBox(height: 77,),
                  Container(
                    width: 362,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0XFF25475F),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                          )
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Text(
                        'Masuk',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun?',
                        style: TextStyle(
                            fontSize: 12
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      }, child: Text(
                        ' Daftar',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0XFF25475F),
                        ),
                      )
                      )
                    ],
                  ),                ]
            )
        )
    );
  }
}