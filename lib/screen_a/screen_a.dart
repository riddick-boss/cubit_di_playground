import 'package:cubit_di_playground/screen_a/cubit_a.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitA(),
      child: BlocBuilder<CubitA, int>(
        builder: (context, state) => const _ViewA(),
      ),
    );
  }
}

class _ViewA extends StatelessWidget {
  const _ViewA();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text("Screen A"),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              context.push("/screenB");
            },
            child: const Text("Go to B"),
          ),
        ],
      ),
    );
  }
}
