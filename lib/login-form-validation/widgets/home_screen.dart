import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deep_dive_bloc_with_project/bloc/counter_bloc.dart';
import 'package:flutter_deep_dive_bloc_with_project/login-form-validation/bloc/auth_bloc.dart';
import 'package:flutter_deep_dive_bloc_with_project/login-form-validation/login_screen.dart';
import 'package:flutter_deep_dive_bloc_with_project/login-form-validation/widgets/gradient_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    But remember that by this,
     it rebuild when changes in AuthBloC
      so avoid this use the AuthBuilder.
     */
  // final authState = context.watch<AuthBloc>().state as AuthSuccess;
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (BuildContext context, Object? state) {
          if(state is AuthInitial){
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                    (route) => false);
          }
        },
        builder: (BuildContext context, state) {
          if(state is AuthLoading){
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            children: [
              Center(
                child: Text((state as AuthSuccess).ui),
              ),

              /// This is LogOut Btn
              GradientButton(onPressed: () {
                context.read<AuthBloc>().add(AuthLogoutRequested());
              })
            ],
          );
        },
      ),
    );
  }
}
