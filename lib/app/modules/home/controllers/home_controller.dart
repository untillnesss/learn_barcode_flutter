import 'package:get/get.dart';
import 'package:learn_barcode/app/routes/app_pages.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomeController extends GetxController {
  RxString text = RxString('tap to scan');

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void doScan() async {
    var result = await Get.toNamed(Routes.QRSCAN);

    if (result != null && result is Barcode) {
      this.text.value = result.code;
      print(result.format);
    } else {
      this.text.value = 'fail';
    }
  }
}
