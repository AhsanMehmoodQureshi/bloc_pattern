
import 'package:bloc_pattern/screen_test/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'blog_test/login_blog.dart';
import 'blog_test/register_bloc.dart';
import 'cubit_test/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        Provider<LoginBloc>(create: (context)=>LoginBloc()),
        Provider<RegisterBloc>(create: (context)=>RegisterBloc()),
        BlocProvider<CounterCubit>(
          create: (BuildContext context) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}

