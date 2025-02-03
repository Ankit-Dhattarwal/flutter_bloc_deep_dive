import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deep_dive_bloc_with_project/bloc/counter_bloc.dart';
import 'package:flutter_deep_dive_bloc_with_project/login-form-validation/bloc/auth_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    But remember that by this,
     it rebuild when changes in AuthBloC
      so avoid this use the AuthBuilder.
     */
  final authState = context.watch<AuthBloc>().state as AuthSuccess;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(authState.ui),
      ),
    );
  }
}
