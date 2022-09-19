import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import '../model/categories_model.dart';
import '../model/products_model.dart';

class CategoryService {
  static Future fetchCategoriesAll() async {
    try {
      final response = await http
          .get(Uri.parse("https://fakestoreapi.com/products/categories/"));

      if (response.statusCode == 200) {
        return categoriesModelFromJson(response.body);
      } else {
        throw ("İstek durumu başarısız oldu: ${response.statusCode}");
      }
    } on TimeoutException catch (_) {
      throw ("Connection timeout");
    } on SocketException catch (_) {
      throw ("No Internet Connection");
    }
  }

  static Future fetchProductByCategory({required String categoryName}) async {
    try {
      final response = await http.get(Uri.parse(
          "https://fakestoreapi.com/products/category/$categoryName"));

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
}
