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
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await Get.toNamed(Routes.QRSCAN);

                if (result != null && result is Barcode) {
                  print(result.code);
                } else {
                  print('KOSONG');
                }
              },
              child: Text('Scan QR'),
            ),
          ],
        ),
      ),
    );
  }
}
