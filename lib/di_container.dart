import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:restaurant/core/utils/network_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

final container = GetIt.instance;

Future<void> init () async {
  //! Feature Auth

  //? Blocs

  //? usecases

  //? repository

  //? DataSources

  //! Feature Foods

  //! Featue Reservation

  //! Feature Planner

  //! Core
  container.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(container()));
  final sharedPreferences = await SharedPreferences.getInstance();
  container.registerLazySingleton(() => sharedPreferences);
  container.registerLazySingleton(() => InternetConnectionChecker());
}