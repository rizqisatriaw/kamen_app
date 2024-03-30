import 'package:get/get.dart';

import '../../presentations/pages/auth/bindings/auth_binding.dart';
import '../../presentations/pages/auth/views/login_view.dart';
import '../../presentations/pages/auth/views/register_view.dart';
import '../../presentations/pages/kamen_list/bindings/home_binding.dart';
import '../../presentations/pages/kamen_list/views/kamen_list_view.dart';
import 'main_route.dart';

abstract class MainPage {
  static final main = [
    /// GetPage Register
    GetPage(
      name: MainRoute.register,
      page: () => RegisterView(),
      binding: AuthBinding(),
    ),

    /// GetPage Login
    GetPage(
      name: MainRoute.login,
      page: () => LoginView(),
      binding: AuthBinding(),
    ),

    /// GetPage HomePage
    GetPage(
      name: MainRoute.listKamen,
      page: () => const KamenListView(),
      binding: KamenListBinding(),
    ),
  ];
}
