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
        ShoppingWebsiteVendor.unKnown => ScriptHolder.empty(),
      };
}
