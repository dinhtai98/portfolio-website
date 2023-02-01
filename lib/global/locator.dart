import 'package:get_it/get_it.dart';
import 'package:portfolio_website/global/global_data.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
  locator.registerLazySingleton(() => GlobalData());
}
