import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class CubitA extends Cubit<int> {
  CubitA() : super(0) {
    log("CubitA created");
  }
}
