//

import 'package:drop_shopping_app/core/data/helpers/script_holder.dart';
import 'package:drop_shopping_app/core/data/helpers/script_holder_provider.dart';

enum ShoppingWebsiteVendor {
  hm,
  adidas,
  puma,
  nike,
  sheIn,
  zara,
  sephora,
  amazon,
  ebay,
  dior,
  unKnown;

  static ShoppingWebsiteVendor fromString(String value) => switch (value) {
        "hm" => ShoppingWebsiteVendor.hm,
        "adidas" => ShoppingWebsiteVendor.adidas,
        "puma" => ShoppingWebsiteVendor.puma,
        "nike" => ShoppingWebsiteVendor.nike,
        "She-in" => ShoppingWebsiteVendor.sheIn,
        "amazon" => ShoppingWebsiteVendor.amazon,
        "zara" => ShoppingWebsiteVendor.zara,
        "sephora" => ShoppingWebsiteVendor.sephora,
        "ebay" => ShoppingWebsiteVendor.ebay,
        "dior" => ShoppingWebsiteVendor.dior,
        String() => ShoppingWebsiteVendor.unKnown,
      };

  ScriptHolder get scriptHolder => switch (this) {
        ShoppingWebsiteVendor.hm => ScriptHolderProvider.hmScriptHolder,
        ShoppingWebsiteVendor.adidas => ScriptHolderProvider.adidasScriptHolder,
        ShoppingWebsiteVendor.puma => ScriptHolderProvider.pumaScriptHolder,
        ShoppingWebsiteVendor.nike => ScriptHolderProvider.nikeScriptHolder,
        ShoppingWebsiteVendor.sheIn => ScriptHolderProvider.sheInScriptHolder,
        ShoppingWebsiteVendor.amazon => ScriptHolderProvider.amazonScriptHolder,
        ShoppingWebsiteVendor.zara => ScriptHolderProvider.zaraScriptHolder,
        ShoppingWebsiteVendor.sephora =>
          ScriptHolderProvider.sephoraScriptHolder,
        ShoppingWebsiteVendor.ebay => ScriptHolderProvider.ebayScriptHolder,
        ShoppingWebsiteVendor.dior => ScriptHolderProvider.diorScriptHolder,
        ShoppingWebsiteVendor.unKnown => ScriptHolder.empty(),
      };

  String get title => switch (this) {
        ShoppingWebsiteVendor.hm => 'hm',
        ShoppingWebsiteVendor.adidas => 'adidas',
        ShoppingWebsiteVendor.puma => 'puma',
        ShoppingWebsiteVendor.nike => 'nike',
        ShoppingWebsiteVendor.sheIn => 'sheIn',
        ShoppingWebsiteVendor.amazon => 'amazon',
        ShoppingWebsiteVendor.zara => 'zara',
        ShoppingWebsiteVendor.sephora => 'sephora',
        ShoppingWebsiteVendor.ebay => 'ebay',
        ShoppingWebsiteVendor.dior => 'dior',
        ShoppingWebsiteVendor.unKnown => 'unKnown',
      };
}
