//

enum ShoppingWebsiteVendor {
  hm,
  adidas,
  puma,
  nike,
  sheIn,
  amazon;

  static ShoppingWebsiteVendor? fromString(String value) => switch (value) {
        "hm" => ShoppingWebsiteVendor.hm,
        "adidas" => ShoppingWebsiteVendor.adidas,
        "puma" => ShoppingWebsiteVendor.puma,
        "nike" => ShoppingWebsiteVendor.nike,
        "She-in" => ShoppingWebsiteVendor.sheIn,
        "amazon" => ShoppingWebsiteVendor.amazon,
        String() => null,
      };
}
