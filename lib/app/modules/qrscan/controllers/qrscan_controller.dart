import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrscanController extends GetxController {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  late Barcode result;
  late QRViewController qrController;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    this.qrController.dispose();
    super.dispose();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void onQRViewCreated(QRViewController qrController) async {
    this.qrController = qrController;
    qrController.scannedDataStream.listen((scanData) {
      qrController.pauseCamera();
      Get.back(result: scanData);
    });
  }
}
