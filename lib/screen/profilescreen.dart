import 'package:bcc1/auth/loginscreen.dart';
import 'package:bcc1/screen/profilescreen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 76, left: 115, right: 115
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/MukaOrang.png',
                    height: 133,
                    width: 133,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Nama Lengkap',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: 'Supernova by Aespa',
                          filled: true,
                          fillColor: Color(0XFFEEF6FC),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.black26),
                          ),
                      )
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: 'Supernova by Aespa',
                        filled: true,
                        fillColor: Color(0XFFEEF6FC),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black26),
                        ),
                      )
                  ),
                  SizedBox(height: 30,),
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
                          MaterialPageRoute(builder: (context) => ProfileScreen2()),
                        );
                      },
                      child: Text(
                        'Edit Profil',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 44,),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Logo Basic Shop 1.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Basic Shop',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text('Ver 1.0',
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 107,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                    Text(
                    'Ingin beralih akun?',
                    style: TextStyle(
                        fontSize: 16),
                    ),
                  SizedBox(height: 12,),
                  Container(
                    width: 362,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0XFF973939),
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
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        'Keluar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ]
                  ),
              ]
              ),
            ),
          ]
        )
      )
    );
  }
}