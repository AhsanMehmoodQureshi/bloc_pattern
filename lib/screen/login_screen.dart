

import 'package:bloc_pattern/screen/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Login Page',style: TextStyle(fontSize: 18,),),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                labelText: 'Email',
                isDense: true
              ),
            ),
            const SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: 'Password',
                  isDense: true
              ),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(onPressed: (){}, child: const Text('Login',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),)),
            const SizedBox(height: 15,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const RegisterScreen()));
            }, child: const Text('Register'))
          ],
        ),
      ),
    ));
  }
}
