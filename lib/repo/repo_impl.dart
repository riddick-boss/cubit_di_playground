import 'dart:developer';

import 'package:cubit_di_playground/repo/repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: Repo)
// @Singleton(as: Repo)
// @LazySingleton(as: Repo)
class RepoImpl implements Repo {
  RepoImpl() {
    log("Repo created (foo is: $foo)");
  }

  @override
  String foo = "foo";
}
