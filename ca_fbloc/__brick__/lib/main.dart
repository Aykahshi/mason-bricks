import 'package:flutter/material.dart';
import 'core/router/app_router.dart';
import 'core/shared/widgets/bloc_scope.dart';
import 'injectable.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configure dependencies first to ensure logger and other services are available
  di.configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = di.sl<AppRouter>();

    return BlocScope(
      child: MaterialApp.router(
        title: 'YOUR APP NAME',
        routerConfig: appRouter.config(),
        builder: (BuildContext context, Widget? child) => Container(),
      ),
    );
  }
}
