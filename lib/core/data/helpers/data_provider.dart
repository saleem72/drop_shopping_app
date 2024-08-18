//

import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:drop_shopping_app/core/domain/models/shopping_website_vendor.dart';

class DataProvider {
  DataProvider._internal();

  static final List<ShoppingWebsite?> websites = [
    // - Zara
    const ShoppingWebsite(
      id: 1,
      name: "Zara",
      url: "https://www.zara.com/uk/",
      image:
          "https://api.weorder.app/assets/uploads/media-uploader/1696756911668.jpeg",
      vendor: ShoppingWebsiteVendor.zara,
      keys: [],
    ),

    // - H&M
    const ShoppingWebsite(
      id: 2,
      name: "H&M",
      //    https://www2.hm.com/en_gb/index.html
      url: "https://www2.hm.com/en_gb/index.html",
      image: "https://s3.we-order.com/recourses/images/1696756504591.jpeg",
      vendor: ShoppingWebsiteVendor.hm,
      keys: [],
    ),

    // - adidas
    const ShoppingWebsite(
      id: 3,
      name: "adidas",
      url: "https://www.adidas.co.uk/",
      image:
          "https://api.weorder.app/assets/uploads/media-uploader/1696757373709.jpeg",
      vendor: ShoppingWebsiteVendor.adidas,
      keys: [],
    ),

    // - Puma
    const ShoppingWebsite(
      id: 4,
      name: "Puma",
      url: "https://uk.puma.com/uk/en",
      image:
          "https://api.weorder.app/assets/uploads/media-uploader/1696772691443.jpeg",
      vendor: ShoppingWebsiteVendor.puma,
      keys: [],
    ),

    // - Nike
    const ShoppingWebsite(
      id: 5,
      name: "Nike",
      url: "https://www.nike.com/",
      image:
          "https://api.weorder.app/assets/uploads/media-uploader/1702556484833.jpeg",
      vendor: ShoppingWebsiteVendor.nike,
      keys: [],
    ),

    // - She-in
    const ShoppingWebsite(
      id: 6,
      name: "She-in",
      url: "https://www.shein.com/Home",
      image:
          "https://logos-world.net/wp-content/uploads/2023/02/Shein-Logo.png",
      vendor: ShoppingWebsiteVendor.sheIn,
      keys: [],
    ),

    // -Amazon
    const ShoppingWebsite(
      id: 7,
      name: "Amazon",
      url: "https://www.amazon.com/",
      image:
          "https://api.weorder.app/assets/uploads/media-uploader/1684845789875.png",
      vendor: ShoppingWebsiteVendor.amazon,
      keys: [],
    ),

    // -Sephora
    const ShoppingWebsite(
      id: 8,
      name: "Sephora",
      url: "https://www.sephora.co.uk/",
      image:
          "https://i.pinimg.com/736x/36/1e/1f/361e1f5468b3c7e28721bde481ed2ea7.jpg",
      vendor: ShoppingWebsiteVendor.sephora,
      keys: [],
    ),

    //
    const ShoppingWebsite(
      id: 8,
      name: "ebay",
      url: "https://www.ebay.com/",
      image: null,
      vendor: ShoppingWebsiteVendor.ebay,
      keys: [],
    ),

    //
    const ShoppingWebsite(
      id: 8,
      name: "dior",
      url: "https://www.dior.com/en_int/",
      image: null,
      vendor: ShoppingWebsiteVendor.dior,
      keys: [],
    ),
  ];
}
