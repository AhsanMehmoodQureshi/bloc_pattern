

import 'package:bloc_pattern/blog/login_blog.dart';
import 'package:bloc_pattern/screen/qr_scanner.dart';
import 'package:bloc_pattern/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc=Provider.of<LoginBloc>(context,listen: false);
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
            StreamBuilder<String>(
              stream: bloc.loginEmail,
              builder: (context, snapshot) {
                return TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: 'Email',
                    errorText: snapshot.error.toString(),
                    isDense: true
                  ),
                  onChanged: (value)=>bloc.changeLoginEmail,
                );
              }
            ),
            const SizedBox(height: 15,),
            StreamBuilder<String>(
              stream: bloc.loginPassword,
              builder: (context, snapshot) {
                return TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Password',
                      errorText: snapshot.error.toString(),
                      isDense: true
                  ),
                  onChanged: (value)=>bloc.changeLoginPassword,
                );
              }
            ),
            const SizedBox(height: 15,),
            StreamBuilder<Object>(
              stream: bloc.isValid,
              builder: (context, snapshot) {
                return ElevatedButton(onPressed: (){
                  bloc.submit();
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: snapshot.hasError?Colors.grey:Colors.deepOrange
                  ),
                    child: const Text('Login',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                );
              }
            ),
            const SizedBox(height: 15,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const RegisterScreen()));
            }, child: const Text('Register')),
            const SizedBox(height: 15,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const QRViewExample()));
            }, child: const Text('Qr Scanner'))
          ],
        ),
      ),
    ));
  }
}
