




import 'package:get/get.dart';
import 'login_bindings.dart';
import 'package:new_flutter_app_fev/login_page.dart';
import 'package:new_flutter_app_fev/routes.dart';

mixin RoutesPageList {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.loginRoute,
      page: () => LoginPage(),
      bindings: [
        LoginBinding()
      ],
    ),
  ];
}