//

import 'script_holder.dart';

class ScriptHolderProvider {
  ScriptHolderProvider._internal();

  static final ScriptHolder hmScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > a > h2")).map((x)=>x.textContent)',
    quantities:
        'Array.from(document.querySelectorAll("article > div.Actions-module--actions__24Z1Z > div > div > div > select")).map((x) => x.value)',
    images:
        'Array.from(document.querySelectorAll("article > a > div > img")).map((x)=>x.src)',
    prices:
        'Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > span")).map((x)=>x.textContent)',
    urls:
        'Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > a")).map((x)=>x.href)',
    colors:
        'Array.from(document.querySelectorAll("#sidebar-sticky-boundary > section.CartItemsList--wrapper__2s_UW > div > ul > li > article > div.CartItem-module--details__3xy60 > ul > li:nth-child(2) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn")).map((x)=> x.childNodes[0].textContent)',
    sizes:
        'Array.from(document.querySelectorAll("#sidebar-sticky-boundary > section.CartItemsList--wrapper__2s_UW > div > ul > li > article > div.CartItem-module--details__3xy60 > ul > li:nth-child(3) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn")).map((x)=> x.childNodes[0].textContent)',
  );

  static final ScriptHolder adidasScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div > div.line-item___i5rwj.line-item__border-redesign___cp6Bq > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(1) > div > a > span")).map((x)=> x.textContent)',
    quantities:
        'Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__footer___UcQo4.row.gl-align-items-center > div.dropdown-container___mjvVf > div > div > select")).map((x)=>x.value)',
    images:
        'Array.from(document.querySelectorAll("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a > img")).map((x)=>x.src)',
    prices:
        'Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__footer___UcQo4.row.gl-align-items-center > div.gl-hidden-m > div > div")).map((x)=>x.textContent)',
    urls:
        'Array.from(document.querySelectorAll("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a")).map((x)=>x.href)',
    colors:
        'Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(2) > div > span")).map((x)=>x.textContent)',
    sizes:
        'Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div.gl-vspace > div > div > span:nth-child(2)")).map((x)=>x.textContent)',
  );

  static final ScriptHolder pumaScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.dyQuerySelectorAll("div > div > div > div > div > div > div.space-y-3 > a > h3")).map((x)=>x.textContent)',
    quantities:
        'Array.from(document.querySelectorAll("div > div > div > div > div > div > div.space-y-3 > div > div.flex.w-24 > div > div > select")).map((x)=>x.value)',
    images:
        'Array.from(document.querySelectorAll("div > div > div > div > div > a > div > img")).map((x)=>x.src)',
    prices:
        'Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id="item-price"]")).map((x)=>x.textContent)',
    urls:
        'Array.from(document.querySelectorAll("div > div > div > div > div > a[data-test-id="cart-item-img-link"]")).map((x)=>x.href)',
    colors:
        'Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id="color"]")).map((x)=>x.textContent)',
    sizes:
        'Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id="size"]")).map((x)=>x.textContent)',
  );

  static final ScriptHolder nikeScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > a > h2")).map((x)=>x.textContent);',
    quantities:
        'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > div.css-3x77rp.ehjd64f0 > div > div:nth-child(2) > div > select")).map((x) => x.value);',
    images:
        'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > figure > a > picture > img")).map((x)=>x.src);',
    prices:
        'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-q2xuk9.ezci20q0 > p > span > span > span")).map((x)=>x.childNodes[1].textContent);',
    urls:
        'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > figure > a")).map((x)=>x.href);',
    colors:
        'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > div.css-1f31asj.eneqjw10")).map((x)=>x.textContent);',
    sizes:
        'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > div.css-3x77rp.ehjd64f0 > div > div:nth-child(1) > div > select")).map((x) => x.options[x.selectedIndex].text);',
  );

  static final ScriptHolder sheInScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div.cart-item-content > div.m-cart__list-inner > div.mcart-right > div > div:nth-child(1) > div.right-struct > span")).map((x)=>x.textContent);',
    quantities:
        'Array.from(document.querySelectorAll("div.cart-item-content > div.m-cart__list-inner > div.mcart-right > div > div.cart-item__operation > div > div > div > div.top > div.right > div > div > input")).map((x)=>x.value);',
    images:
        'Array.from(document.querySelectorAll("div.cart-item-content > div.m-cart__list-inner > div.mcart-left > a > img")).map((x)=>x.src);',
    prices:
        'Array.from(document.querySelectorAll("div.cart-item-content > div.m-cart__list-inner > div.mcart-right > div > div.cart-item__operation > div > div > div > div.top > div.left > div > span")).map((x)=>x.textContent);',
    urls:
        'Array.from(document.querySelectorAll("div.cart-item-content > div.m-cart__list-inner > div.mcart-left > a > img")).map((x)=>x.src);',
    colors:
        'Array.from(document.querySelectorAll("div.cart-item-content > div.m-cart__list-inner > div.mcart-right > div > div:nth-child(1) > div.product-attr-ope > section > div > div > div > span")).map((x)=>x.textContent.trim().split("/")[0].trim());',
    sizes:
        'Array.from(document.querySelectorAll("div.cart-item-content > div.m-cart__list-inner > div.mcart-right > div > div:nth-child(1) > div.product-attr-ope > section > div > div > div > span")).map((x)=>x.textContent.trim().split("/")[1].trim());',
  );

  static final ScriptHolder amazonScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div.sc-list-item-content > div.sc-item-dp-link > div > div > div > span")).map((x)=>x.textContent.trim());',
    quantities:
        'Array.from(document.querySelectorAll(".sc-quantity-label > span")).map((x) => x.textContent.trim());',
    images:
        'Array.from(document.querySelectorAll("div.sc-list-item-content > div.sc-item-dp-link > div > div > div > img")).map((x)=>x.src);',
    prices:
        'Array.from(document.querySelectorAll(".a-row.a-spacing-mini.a-spacing-top-mini")).map((x) => Array.from(x.querySelectorAll(".sc-badge-price > .sc-badge-price-to-pay"))).flat(1).map((x) => Array.from(x.querySelectorAll("span[aria-hidden="true"]"))).flat(1).map((x) => x.textContent.trim());',
    urls:
        'Array.from(document.querySelectorAll(".sc-item-dp-link")).map((x) => "https://www.amazon.com" + x.attributes["data-url"].textContent);',
    colors:
        'Array.from(document.querySelectorAll(".sc-product-variation > span.a-list-item")).map((x) => x.childNodes[1].textContent.includes("Color") ? x.childNodes[3].textContent.trim() : null).filter(function (el) { return el != null;});',
    sizes:
        'Array.from(document.querySelectorAll(".sc-product-variation > span.a-list-item")).map((x) => x.childNodes[1].textContent.includes("Size") ? x.childNodes[3].textContent.trim() : null).filter(function (el) { return el != null;});',
  );

  static final ScriptHolder zaraScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div.shop-cart-item__details > div.shop-cart-item__details-container > div.shop-cart-item__info > div.shop-cart-item-header > a > div")).map((x) => x.textContent);',
    quantities:
        'Array.from(document.querySelectorAll("div.shop-cart-item__details > div.shop-cart-item__secondary-actions > div > div")).map((x) => x.textContent);',
    images:
        'Array.from(document.querySelectorAll("div.shop-cart-item__image-container > a > div > div > div > img")).map((x) => x.src);',
    prices:
        'Array.from(document.querySelectorAll("div.shop-cart-item__details > div.shop-cart-item__details-container > div.shop-cart-item__info > div.shop-cart-item-pricing__container > div > div > div > span")).map((x) => x.textContent);',
    urls:
        'Array.from(document.querySelectorAll("div.shop-cart-item__image-container > a")).map((x) => x.href);',
    colors:
        'Array.from(document.querySelectorAll("div.shop-cart-item__details > div.shop-cart-item__details-container > div.shop-cart-item__info > div.shop-cart-item-details-base > span.shop-cart-item-details-base__color")).map((x) => x.textContent);',
    sizes:
        'Array.from(document.querySelectorAll("div.shop-cart-item__details > div.shop-cart-item__details-container > div.shop-cart-item__info > div.shop-cart-item-details-base > span.shop-cart-item-details-base__size")).map((x) => x.textContent);',
  );

  static final ScriptHolder sephoraScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div > div > div.basket-product-title-container > a.product-title > span")).map((x) => x.textContent.trim());',
    quantities:
        'Array.from(document.querySelectorAll("div > div > div.bagItem-utils.h-display-ib.h-valign-t.h-align-r > div > select")).map((x)=>x.value);',
    images:
        'Array.from(document.querySelectorAll("div > a > img")).map((x) => x.src);',
    prices:
        'Array.from(document.querySelectorAll("div > div > div.bagItem-utils.h-display-ib.h-valign-t.h-align-r > p > b")).map((x) => x.textContent.trim());',
    urls:
        'Array.from(document.dyQuerySelectorAll("div.bagItem-summary > a")).map((x) => x.href);',
    colors: null,
    sizes: null,
  );
}
