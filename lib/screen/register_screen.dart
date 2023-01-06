

import 'package:bloc_pattern/blog/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc=Provider.of<RegisterBloc>(context,listen: false);
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Register Page',style: TextStyle(fontSize: 18,),),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<Object>(
              stream: bloc.registerUserName,
              builder: (context, snapshot) {
                return TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'UserName',
                      errorText: snapshot.error.toString(),
                      isDense: true
                  ),
                  onChanged: (value)=>bloc.changeUserName,
                );
              }
            ),
            const SizedBox(height: 15,),
            StreamBuilder<Object>(
              stream: bloc.registerPhone,
              builder: (context, snapshot) {
                return TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'PhoneNumber',
                      errorText: snapshot.error.toString(),
                      isDense: true
                  ),
                  onChanged: (value)=>bloc.changePhone,
                );
              }
            ),
            const SizedBox(height: 15,),
            StreamBuilder<Object>(
              stream: bloc.registerEmail,
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
                  onChanged: (value)=>bloc.changeEmail,
                );
              }
            ),
            const SizedBox(height: 15,),
            StreamBuilder<Object>(
              stream: bloc.registerPassword,
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
                  onChanged: (value)=>bloc.changePassword,
                );
              }
            ),
            const SizedBox(height: 15,),
            StreamBuilder<Object>(
              stream: bloc.isValid,
              builder: (context, snapshot) {
                return ElevatedButton(onPressed: (){

                },style: ElevatedButton.styleFrom(
                  backgroundColor: snapshot.hasError ?Colors.grey:Colors.deepOrange
                ),
                    child: const Text('Register',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),));
              }
            ),
            const SizedBox(height: 15,),
            TextButton(onPressed: (){
             // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const LoginScreen()));
              Navigator.pop(context);
            }, child: const Text('Login'))
          ],
        ),
      ),
    ));
  }
}
