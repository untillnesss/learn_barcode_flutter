import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
            BarcodeWidget(
              barcode: Barcode.qrCode(),
              data: 'Hello Flutter',
            ),
          ],
        ),
      ),
    );
  }
}
