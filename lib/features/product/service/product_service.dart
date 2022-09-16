import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import '../model/product_model.dart';
import '../model/products_model.dart';

class ProductService {
  static Future fetchProductsAll() async {
    try {
      final response =
          await http.get(Uri.parse("https://fakestoreapi.com/products/"));

      if (response.statusCode == 200) {
        return productsModelFromJson(response.body);
      } else {
        throw ("İstek durumu başarısız oldu: ${response.statusCode}");
      }
    } on TimeoutException catch (_) {
      throw ("Connection timeout");
    } on SocketException catch (_) {
      throw ("No Internet Connection");
    }
  }

  static Future fetchProductById({required int id}) async {
    try {
      final response =
          await http.get(Uri.parse("https://fakestoreapi.com/products/$id"));

      if (response.statusCode == 200) {
        return productModelFromJson(response.body);
      } else {
        throw ("İstek durumu başarısız oldu: ${response.statusCode}");
      }
    } on TimeoutException catch (_) {
      throw ("Connection timeout");
    } on SocketException catch (_) {
      throw ("No Internet Connection");
    }
  }
}
