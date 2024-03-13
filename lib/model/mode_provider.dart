import 'package:flutter/material.dart';
import 'package:loyiha_ishi_laza/model/models/api_models.dart';
import 'package:loyiha_ishi_laza/model/models/products_model.dart';

class ModelProvider extends ChangeNotifier {
  ApiModels apiModels = ApiModels();
  List<ProductsModel> products = [];
  List<String> category = [];

  Future getAllCategory() async {
    List data = await apiModels.getCategory();
    data.forEach((e) {
      category.add(e);
    });
    notifyListeners();
  }

  Future getAllProducts(String productName) async {
    final data = await apiModels.getProducts(productName);
    products.add(ProductsModel.fromJson(data));
    notifyListeners();
  }
}
