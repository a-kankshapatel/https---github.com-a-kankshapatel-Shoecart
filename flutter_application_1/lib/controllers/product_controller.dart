import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter_application_1/services/firebase_db.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  final products = <ProductModel>[].obs;

  @override
  void onInit() {
    products.bindStream(FireBaseDB().getAllProducts());
    super.onInit();
  }
}
