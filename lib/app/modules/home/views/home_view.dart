import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_barcode/app/routes/app_pages.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.text.value,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: controller.doScan,
              child: Text('Scan QR'),
            ),
          ],
        ),
      ),
    );
  }
}
