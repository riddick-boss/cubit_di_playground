// import 'package:cubit_di_playground/di_config.dart';
import 'package:cubit_di_playground/di_config.dart';
import 'package:cubit_di_playground/screen_b/cubit_b.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitB(getIt()),
      child: BlocBuilder<CubitB, int>(
        builder: (context, state) => const _ViewB(),
      ),
    );
  }
}

class _ViewB extends StatelessWidget {
  const _ViewB();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text("Screen B"),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CubitB>().updateFoo("screenBFoo");
              context.go("/screenA");
            },
            child: const Text("Go to A"),
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () => context.pop(),
            child: const Text("Go back"),
          ),
        ],
      ),
    );
  }
}
