import 'package:cubit_di_playground/di_config.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(initializerName: 'getItInit')
void configureDependencies() => getIt.getItInit();
