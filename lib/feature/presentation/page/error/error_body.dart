import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/map_cubit.dart';

class ErrorBody extends StatefulWidget {
  const ErrorBody({Key? key}) : super(key: key);

  @override
  State<ErrorBody> createState() => _ErrorBodyState();
}

class _ErrorBodyState extends State<ErrorBody> {
  late MapCubit cubit = context.read();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Error!'),
    );
  }
}
