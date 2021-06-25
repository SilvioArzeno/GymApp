import 'package:GymApp/Login/presentation/pages/login_page.dart';

import 'app_router.dart';

Future<void> initRoutes() {
  AppRouter.appRouter
    ..define(
      routePath: LoginPage.id,
      handler: AppRouteHandler(handlerFunc: (arguments) => LoginPage()),
    );
}
