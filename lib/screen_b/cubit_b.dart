import 'dart:developer';

import 'package:cubit_di_playground/repo/repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitB extends Cubit<int> {
  CubitB(this.repo) : super(0) {
    log("CubitB created");
    log("CubitB, repo foo is: ${repo.foo}");
  }

  final Repo repo;

  void updateFoo(String foo) {
    repo.foo = foo;
  }
}
