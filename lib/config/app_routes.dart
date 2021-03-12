import 'package:get/get.dart';
import 'package:number_facts/modules/home/home_bindings.dart';
import 'package:number_facts/modules/home/home_page.dart';

class Routes {
  Routes._();

  static final appRoutes = <GetPage>[
    GetPage(
      name: HomePage.ROUTE_PAGE,
      page: () => HomePage(),
      binding: HomeBindings(),
    )
  ];
}
