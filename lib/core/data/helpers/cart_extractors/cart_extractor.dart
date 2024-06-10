//

import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';

abstract class CartExtractor {
  Future<List<DropShoppingProduct>> htmlDecoding(String body);
  Future<List<DropShoppingProduct>> soapDecoding(String body);
}
