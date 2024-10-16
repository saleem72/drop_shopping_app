//

import 'script_holder.dart';

class ScriptHolderProvider {
  ScriptHolderProvider._internal();

  static final ScriptHolder hmScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > a > h2")).map((x)=>x.textContent);',
    quantities:
        'Array.from(document.querySelectorAll("article > div.Actions-module--actions__24Z1Z > div > div > div > select")).map((x) => x.value);',
    images:
        'Array.from(document.querySelectorAll("article > a > div > img")).map((x)=>x.src);',
    prices:
        'Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > span")).map((x)=>x.textContent);',
    urls:
        'Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > a")).map((x)=>x.href);',
    colors:
        'Array.from(document.querySelectorAll("#sidebar-sticky-boundary > section.CartItemsList--wrapper__2s_UW > div > ul > li > article > div.CartItem-module--details__3xy60 > ul > li:nth-child(2) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn")).map((x)=> x.childNodes[0].textContent);',
    sizes:
        'Array.from(document.querySelectorAll("#sidebar-sticky-boundary > section.CartItemsList--wrapper__2s_UW > div > ul > li > article > div.CartItem-module--details__3xy60 > ul > li:nth-child(3) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn")).map((x)=> x.childNodes[0].textContent);',
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
        'Array.from(document.querySelectorAll("p > a > span:nth-child(2)")).map((x) => x.textContent.trim())',
    sizes:
        'Array.from(document.querySelectorAll("p.line-item-attributes.Size-9d7c6aef7404d8ad94f333d5ec > a > span:nth-child(2)")).map((x) => x.textContent.trim())',
  );

  static final ScriptHolder pumaScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.dyQuerySelectorAll("div > div > div > div > div > div > div.space-y-3 > a > h3")).map((x)=>x.textContent);',
    quantities:
        'Array.from(document.querySelectorAll("div > div > div > div > div > div > div.space-y-3 > div > div.flex.w-24 > div > div > select")).map((x)=>x.value);',
    images:
        'Array.from(document.querySelectorAll("div > div > div > div > div > a > div > img")).map((x)=>x.src);',
    prices:
        'Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id=\'item-price\']")).map((x)=>x.textContent);',
    urls:
        'Array.from(document.querySelectorAll("div > div > div > div > div > a[data-test-id=\'cart-item-img-link\']")).map((x)=>x.href);',
    colors:
        'Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id=\'color\']")).map((x)=>x.textContent);',
    sizes:
        'Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id=\'size\']")).map((x)=>x.textContent);',
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
        'Array.from(document.querySelectorAll(".a-row.a-spacing-mini.a-spacing-top-mini")).map((x) => Array.from(x.querySelectorAll(".sc-badge-price > .sc-badge-price-to-pay"))).flat(1).map((x) => Array.from(x.querySelectorAll("span[aria-hidden=\'true\']"))).flat(1).map((x) => x.textContent.trim());',
    urls:
        'Array.from(document.querySelectorAll(".sc-item-dp-link")).map((x) => \'https://www.amazon.com\' + x.attributes[\'data-url\'].textContent);',
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

  static final ScriptHolder ebayScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("ul > li > div > div > div > div.listsummary-content > div > div.grid-item-information > div.grid-item-title > h3 > a")).map((x) => x.textContent.trim());',
    quantities:
        'Array.from(document.querySelectorAll("ul > li > div > div > div > div.listsummary-content > div > div.grid-item-price-and-quantity > div > div.grid-item-quantity-lower > div > div > span > span > span:nth-child(2)")).map((x) => x.textContent.split(" ")[1]);',
    images:
        'Array.from(document.querySelectorAll("ul > li > div > div > div > div.listsummary-content > div > div.grid-item-image > div > div > img")).map((x) => x.src);',
    prices:
        'Array.from(document.querySelectorAll("ul > li > div > div > div > div.listsummary-content > div > div.grid-item-price-and-quantity > div > div.grid-item-price > div > div > div > span > span > span")).map((x) => x.textContent);',
    urls:
        'Array.from(document.querySelectorAll("ul > li > div > div > div > div.listsummary-content > div > div.grid-item-information > div.grid-item-title > h3 > a")).map((x) => x.href);',
    colors: null,
    sizes: null,
  );

  static final ScriptHolder diorScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div > div > div > div > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-7.mui-style-1pastnp > div.top-body.MuiBox-root.mui-style-19idom > div > a")).map((x) => x.textContent);',
    quantities:
        'Array.from(document.querySelectorAll("div > div > div > div > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-7.mui-style-1pastnp > div.bottom-body.MuiBox-root.mui-style-0 > div.MuiBox-root.mui-style-19fk1yt > div > div > span:nth-child(1)")).map((x) => x.textContent.split(" ")[1]);',
    images:
        'Array.from(document.querySelectorAll("div > div > div > div > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-5.mui-style-mppcrb > a > img")).map((x) => x.src)',
    prices:
        'Array.from(document.querySelectorAll("div > div > div > div > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-7.mui-style-1pastnp > div.bottom-body.MuiBox-root.mui-style-0 > div.MuiBox-root.mui-style-lcoy4n > p > span")).map((x) => x.textContent)',
    urls:
        'Array.from(document.querySelectorAll("div > div > div > div > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-7.mui-style-1pastnp > div.top-body.MuiBox-root.mui-style-19idom > div > a")).map((x) => x.href);',
    colors: null,
    sizes:
        'Array.from(document.querySelectorAll("div > div > div > div > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-7.mui-style-1pastnp > div.bottom-body.MuiBox-root.mui-style-0 > div:nth-child(1) > div > p")).map((x) => x.textContent.split(" ")[1]);',
  );

  static final ScriptHolder aliexpressScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div > div.cart-product-info > div.cart-product-name-new > a")).map((x) => x.textContent)',
    quantities:
        'Array.from(document.querySelectorAll("div > div.cart-product-info > div.cart-product-block > div.cart-product-block-action-wrapper > div > input")).map((x) => x.value)',
    images:
        'Array.from(document.querySelectorAll("div > div.cart-product-body > a > div.cart-product-img")).map((x) => x.style[\'background-image\'].split(\'"\')[1])',
    prices:
        'Array.from(document.querySelectorAll("div > div.cart-product-info > div.cart-product-block > div.cart-product-block-price-wrapper > div > div > span > div")).map((x) => x.textContent)',
    urls:
        'Array.from(document.querySelectorAll("div > div.cart-product-body > a")).map((x) => x.href)',
    colors:
        'Array.from(document.querySelectorAll("div.cart-product-sku")).map((x) => x.textContent.trim())',
    sizes: null,
  );

  static final ScriptHolder coachScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div.line-item-row > div.line-item-details > div > div.col-lg-12.d-flex.flex-row > div.item-attributes.d-flex.flex-column.justify-content-start > div.line-item-name > a")).map((x) => x.textContent.trim())',
    quantities:
        'Array.from(document.querySelectorAll("div.line-item-row > div.line-item-details > div > div.col-lg-12.d-flex.flex-row > div.item-attributes.d-flex.flex-column.justify-content-start > div.item-qty-price.d-md-none.d-flex.flex-row > div.line-item-quantity.d-md-none > div.quantity-form > select")).map((x) => x.value)',
    images:
        'Array.from(document.querySelectorAll("div.line-item-row > div.line-item-details > div > div.col-lg-12.d-flex.flex-row > div.item-image > a > img")).map((x) => x.src)',
    prices:
        'Array.from(document.querySelectorAll("div.line-item-row > div.line-item-details > div > div.col-lg-12.d-flex.flex-row > div.item-attributes.d-flex.flex-column.justify-content-start > div.item-qty-price.d-md-none.d-flex.flex-row > div.line-item-total-price.d-md-none > div > div > span.cart-price.d-md-block.discount-price")).map((x) => x.textContent.trim())',
    urls:
        'Array.from(document.querySelectorAll("div.line-item-row > div.line-item-details > div > div.col-lg-12.d-flex.flex-row > div.item-image > a")).map((x) => x.href)',
    colors:
        'Array.from(document.querySelectorAll("a.edit > span[data-qa=\'sb_value_pdtColor\']")).map((x) => x.textContent.trim())',
    sizes:
        'Array.from(document.querySelectorAll("a.edit > span[data-qa=\'sb_value_pdtSize\']")).map((x) => x.textContent.trim())',
  );

  static final trendyolScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div > div.content > a")).map((x) => x.textContent.trim())',
    images:
        'Array.from(document.querySelectorAll("div.product-card > div > a.link > img.image")).map((x) => x.src)',
    urls:
        'Array.from(document.querySelectorAll("div > div.content > a")).map((x) => x.href)',
    sizes:
        'Array.from(document.querySelectorAll("div > div.content > div.detail > div.size > div.size-value > span")).map((x) => x.textContent)',
    quantities:
        'Array.from(document.querySelectorAll("div > div.content > div.bottom-container > div.quantity-select > select")).map((x) => x.value)',
    colors: null,
    prices:
        'Array.from(document.querySelectorAll("div > div.content > div.bottom-container > div.binary-price-wrapper > div > div > div.p-price-wrapper > div.p-sale-price-wrapper")).map((x) => x.textContent)',
  );

  static final zalandoScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("article > div.L5YdXz._0xLoFW._7ckuOK.mROyo1 > div._5qdMrS._75qWlu > a > header > div.Zhr-fS.hD5J5m > h3.sDq_FX.lystZ1.FxZV-M.HlZ_Tf")).map((x) => x.innerText)',
    images:
        'Array.from(document.querySelectorAll("article > div.L5YdXz._0xLoFW._7ckuOK.mROyo1 > div._5qdMrS.WrXGl0.Sw_aP_.TOFNur.WdG8Bv > a > figure > div > div > img")).map((x) => x.src)',
    urls:
        'Array.from(document.querySelectorAll("article > div.L5YdXz._0xLoFW._7ckuOK.mROyo1 > div._5qdMrS.WrXGl0.Sw_aP_.TOFNur.WdG8Bv > a")).map((x) => x.href)',
    sizes:
        'Array.from(document.querySelectorAll("article > div.L5YdXz._0xLoFW._7ckuOK.mROyo1 > div._5qdMrS._75qWlu > a > header > div:nth-child(4)")).map((x) => x.textContent.trim())',
    quantities:
        'Array.from(document.querySelectorAll("article > div.L5YdXz._0xLoFW._7ckuOK.mROyo1 > div._5qdMrS._75qWlu > div > div > div > select")).map((x) => x.value)',
    colors:
        'Array.from(document.querySelectorAll("article > div.L5YdXz._0xLoFW._7ckuOK.mROyo1 > div._5qdMrS._75qWlu > a > header > div.sDq_FX.lystZ1.FxZV-M.Yb63TQ.q84f1m")).map((x) => x.textContent.trim())',
    prices:
        'Array.from(document.querySelectorAll("article > div.L5YdXz._0xLoFW._7ckuOK.mROyo1 > div._5qdMrS._75qWlu > a > header > section > p > span")).map((x) => x.innerText)',
  );

  static final marksAndSpencerScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div.css-1khhcts.e7kerem0 > div.css-14glzgm.e7kerem0 > a > div > div.css-ph08m5.e7kerem0 > p:nth-child(2)")).map((x) => x.textContent)',
    images:
        'Array.from(document.querySelectorAll("div.css-1khhcts.e7kerem0 > div.css-14glzgm.e7kerem0 > a > div > div.css-2i4vvk.e10qxcln0 > div > img")).map((x) => x.src)',
    urls:
        'Array.from(document.querySelectorAll("div.css-1khhcts.e7kerem0 > div.css-14glzgm.e7kerem0 > a")).map((x) => x.href)',
    sizes: null,
    quantities:
        'Array.from(document.querySelectorAll("div.css-1khhcts.e7kerem0 > div.css-14glzgm.e7kerem0 >  div > div > div > select")).map((x) => x.value)',
    colors:
        'Array.from(document.querySelectorAll("div.css-1khhcts.e7kerem0 > div.css-14glzgm.e7kerem0 > a > div > div.css-ph08m5.e7kerem0 > p:nth-child(3)")).map((x) => x.textContent)',
    prices:
        'Array.from(document.querySelectorAll("div > div.css-14glzgm.e7kerem0 > div > div.css-1sx6v9k.e7kerem0 > p")).map((x) => x.textContent)',
  );

  static final hobbsScriptHolder = ScriptHolder(
    titles:
        'Array.from(document.querySelectorAll("div > div.product-card > div > div.product-card__content.ml-4 > div.product-card__name > a > span")).map((x) => x.textContent)',
    images:
        'Array.from(document.querySelectorAll("div > div.product-card > div > div.product-card__image-container > a > img")).map((x) => x.src)',
    urls:
        'Array.from(document.querySelectorAll("div > div.product-card > div > div.product-card__image-container > a")).map((x) => x.href)',
    sizes:
        'Array.from(document.querySelectorAll("div > div.cart-item-bottom-section > div > div > div > select[id=lineItemSize]")).map((x) => x.options[x.selectedIndex].text)',
    colors:
        'Array.from(document.querySelectorAll("div > div.product-card > div > div.product-card__content.ml-4 > div.product-card__attribute.product-card__attribute--color.product-card__content__text > b")).map((x) => x.textContent)',
    prices:
        'Array.from(document.querySelectorAll("div > div.product-card > div > div.product-card__content.ml-4 > div > span > span.line-item-total-price-amount")).map((x) => x.textContent.trim())',
    quantities:
        'Array.from(document.querySelectorAll("div > div.cart-item-bottom-section > div > div > div > select[id=lineItemQuantity]")).map((x) => x.options[x.selectedIndex].text)',
  );

  static final newAmazon = ScriptHolder(
    cards: 'document.querySelectorAll("div.sc-item-dp-link")',
    titles:
        'querySelector("div > div.sc-list-item-content > div.sc-item-dp-link > div > div > div.a-fixed-left-grid-col.a-col-right > a > span > h4 > span > span.a-truncate-cut")?.textContent.trim()',
    quantities: null,
    images:
        'querySelector("div > div.sc-list-item-content > div.sc-item-dp-link > div > div > div.a-fixed-left-grid-col.sc-item-product-image.a-col-left > img").src',
    prices:
        'querySelector("div > div.sc-list-item-content > div.sc-item-dp-link > div > div > div.a-fixed-left-grid-col.a-col-right > ul > div.a-row.a-spacing-mini.a-spacing-top-mini > li > span > div > div > span > span > span > span > span.a-offscreen")?.textContent.trim()',
    urls:
        'querySelector("div > div.sc-list-item-content > div.sc-item-dp-link > div > div > div.a-fixed-left-grid-col.a-col-right > a")?.href',
    colors:
        'querySelector("div > div.sc-list-item-content > div.sc-item-dp-link > div > div > div.a-fixed-left-grid-col.a-col-right > ul > li:nth-child(5) > span > span:nth-child(2)")?.textContent.trim()',
    sizes:
        'querySelector("div > div.sc-list-item-content > div.sc-item-dp-link > div > div > div.a-fixed-left-grid-col.a-col-right > ul > li:nth-child(4) > span > span:nth-child(2)")?.textContent.trim()',
  );

  static final newHM = ScriptHolder(
    cards: 'document.querySelectorAll("article.eeb24b")',
    titles: 'querySelector("div.bcfd4f > a > h2").textContent.trim()',
    quantities: null,
    images: 'querySelector("div.bcf189 > a > div > div > picture > img").src',
    prices: 'querySelector("div.bcfd4f > span").textContent.trim()',
    urls: 'querySelector("div.bcf189 > a").href',
    colors:
        'querySelectorAll("dl > div")[1].querySelector("dd").textContent.trim()',
    sizes:
        'querySelectorAll("dl > div")[2].querySelector("dd").textContent.trim()',
  );

  static final newAdidas = ScriptHolder(
    cards: 'document.querySelectorAll("div.item___G_y2d")',
    titles:
        'querySelector("div > div > div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(1) > div > a > span")?.textContent.trim()',
    quantities: null,
    images:
        'querySelector("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a > img")?.src',
    prices:
        'querySelector("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__footer___UcQo4.row.gl-align-items-center > div.gl-hidden-m > div > div")?.textContent.trim()',
    urls:
        'querySelector("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a")?.href',
    colors:
        'querySelector("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(2) > div > span")?.textContent.trim()',
    sizes:
        'querySelector("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div.gl-vspace > div > div > span:nth-child(2)")?.textContent.trim()',
  );
}
