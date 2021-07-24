import 'package:get/get.dart';

import 'package:learn_barcode/app/modules/home/bindings/home_binding.dart';
import 'package:learn_barcode/app/modules/home/views/home_view.dart';
import 'package:learn_barcode/app/modules/qrscan/bindings/qrscan_binding.dart';
import 'package:learn_barcode/app/modules/qrscan/views/qrscan_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.QRSCAN,
      page: () => QrscanView(),
      binding: QrscanBinding(),
    ),
  ];
}
