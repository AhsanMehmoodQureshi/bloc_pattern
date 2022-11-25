

import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: 'UserName',
                  isDense: true
              ),
            ),
            const SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: 'PhoneNumber',
                  isDense: true
              ),
            ),
            const SizedBox(height: 15,),
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
            ElevatedButton(onPressed: (){}, child: const Text('Register',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),)),
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
