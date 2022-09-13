import 'package:http/http.dart' as http;
import 'package:linda_wedding_ecommerce/features/onboard/model/product_model.dart';

class ProductService {
  static Future<List<ProductsModel>>? fetchProductsAll() async {
    final response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      return productsModelFromJson(response.body);
    } else {
      throw ("İstek durumu başarısız oldu: ${response.statusCode}");
    }
  }
}
