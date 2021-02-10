import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_flutter_app_fev/routes.dart';
import 'package:new_flutter_app_fev/routes_page_list.dart';


void main() {
  runApp(GetMaterialApp(
    initialRoute: Routes.loginRoute,
    getPages: RoutesPageList.routes,
    theme: ThemeData(primaryColor: Colors.black),
  ));




}
