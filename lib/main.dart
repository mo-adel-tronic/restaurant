import 'package:flutter/material.dart';
import 'package:restaurant/core/config/routes/app_routes.dart';
import 'package:restaurant/core/config/theme/theme.dart';
import 'package:restaurant/di_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({
    super.key,
    required this.appRouter,
  });
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}