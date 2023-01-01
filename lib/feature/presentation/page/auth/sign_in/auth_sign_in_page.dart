import 'package:dufs/core/utils/states/cubit_state.dart';
import 'package:dufs/feature/presentation/cubits/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/screen.dart';
import '../../home/home_page.dart';
import 'auth_sign_in_body.dart';

class AuthSignInPage extends StatelessWidget {
  static const String route = "auth_sign_in_page";

  const AuthSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      background: Colors.white,
      body: BlocConsumer<AuthCubit, CubitState>(
        listener: (context, state) {
          final isLoggedIn = state.data ?? false;
          if (isLoggedIn) {
            Navigator.pushNamedAndRemoveUntil(
                context, HomePage.route, (route) => false);
          }
        },
        builder: (context, state) {
          return const AuthSignInBody();
        },
      ),
    );
  }
}
