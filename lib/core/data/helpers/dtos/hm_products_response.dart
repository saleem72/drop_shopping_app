// To parse this JSON data, do
//
//     final hmProductsResponse = hmProductsResponseFromJson(jsonString);

import 'dart:convert';

HmProductsResponse hmProductsResponseFromJson(String str) =>
    HmProductsResponse.fromJson(json.decode(str));

String hmProductsResponseToJson(HmProductsResponse data) =>
    json.encode(data.toJson());

class HmProductsResponse {
  List<Result>? results;

  HmProductsResponse({
    this.results,
  });

  factory HmProductsResponse.fromJson(Map<String, dynamic> json) =>
      HmProductsResponse(
        results: json["results"] == null
            ? []
            : List<Result>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  List<Hit>? hits;
  List<UserDatum>? userData;
  int? nbHits;
  int? page;
  int? nbPages;
  int? hitsPerPage;
  ResultFacets? facets;
  FacetsStats? facetsStats;
  bool? exhaustiveFacetsCount;
  bool? exhaustiveNbHits;
  bool? exhaustiveTypo;
  Exhaustive? exhaustive;
  String? query;
  String? queryAfterRemoval;
  String? params;
  String? index;
  String? queryId;
  bool? automaticInsights;
  RenderingContent? renderingContent;
  int? processingTimeMs;
  ProcessingTimingsMs? processingTimingsMs;
  int? serverTimeMs;

  Result({
    this.hits,
    this.userData,
    this.nbHits,
    this.page,
    this.nbPages,
    this.hitsPerPage,
    this.facets,
    this.facetsStats,
    this.exhaustiveFacetsCount,
    this.exhaustiveNbHits,
    this.exhaustiveTypo,
    this.exhaustive,
    this.query,
    this.queryAfterRemoval,
    this.params,
    this.index,
    this.queryId,
    this.automaticInsights,
    this.renderingContent,
    this.processingTimeMs,
    this.processingTimingsMs,
    this.serverTimeMs,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        hits: json["hits"] == null
            ? []
            : List<Hit>.from(json["hits"]!.map((x) => Hit.fromJson(x))),
        userData: json["userData"] == null
            ? []
            : List<UserDatum>.from(
                json["userData"]!.map((x) => UserDatum.fromJson(x))),
        nbHits: json["nbHits"],
        page: json["page"],
        nbPages: json["nbPages"],
        hitsPerPage: json["hitsPerPage"],
        facets: json["facets"] == null
            ? null
            : ResultFacets.fromJson(json["facets"]),
        facetsStats: json["facets_stats"] == null
            ? null
            : FacetsStats.fromJson(json["facets_stats"]),
        exhaustiveFacetsCount: json["exhaustiveFacetsCount"],
        exhaustiveNbHits: json["exhaustiveNbHits"],
        exhaustiveTypo: json["exhaustiveTypo"],
        exhaustive: json["exhaustive"] == null
            ? null
            : Exhaustive.fromJson(json["exhaustive"]),
        query: json["query"],
        queryAfterRemoval: json["queryAfterRemoval"],
        params: json["params"],
        index: json["index"],
        queryId: json["queryID"],
        automaticInsights: json["_automaticInsights"],
        renderingContent: json["renderingContent"] == null
            ? null
            : RenderingContent.fromJson(json["renderingContent"]),
        processingTimeMs: json["processingTimeMS"],
        processingTimingsMs: json["processingTimingsMS"] == null
            ? null
            : ProcessingTimingsMs.fromJson(json["processingTimingsMS"]),
        serverTimeMs: json["serverTimeMS"],
      );

  Map<String, dynamic> toJson() => {
        "hits": hits == null
            ? []
            : List<dynamic>.from(hits!.map((x) => x.toJson())),
        "userData": userData == null
            ? []
            : List<dynamic>.from(userData!.map((x) => x.toJson())),
        "nbHits": nbHits,
        "page": page,
        "nbPages": nbPages,
        "hitsPerPage": hitsPerPage,
        "facets": facets?.toJson(),
        "facets_stats": facetsStats?.toJson(),
        "exhaustiveFacetsCount": exhaustiveFacetsCount,
        "exhaustiveNbHits": exhaustiveNbHits,
        "exhaustiveTypo": exhaustiveTypo,
        "exhaustive": exhaustive?.toJson(),
        "query": query,
        "queryAfterRemoval": queryAfterRemoval,
        "params": params,
        "index": index,
        "queryID": queryId,
        "_automaticInsights": automaticInsights,
        "renderingContent": renderingContent?.toJson(),
        "processingTimeMS": processingTimeMs,
        "processingTimingsMS": processingTimingsMs?.toJson(),
        "serverTimeMS": serverTimeMs,
      };
}

class Exhaustive {
  bool? facetsCount;
  bool? nbHits;
  bool? typo;

  Exhaustive({
    this.facetsCount,
    this.nbHits,
    this.typo,
  });

  factory Exhaustive.fromJson(Map<String, dynamic> json) => Exhaustive(
        facetsCount: json["facetsCount"],
        nbHits: json["nbHits"],
        typo: json["typo"],
      );

  Map<String, dynamic> toJson() => {
        "facetsCount": facetsCount,
        "nbHits": nbHits,
        "typo": typo,
      };
}

class ResultFacets {
  AttrFitEn? attrFitEn;
  // Map<String, int>? attrSizeEn;
  // Map<String, int>? finalPriceEn;
  AttrContextEn? attrContextEn;
  AttrFunctionEn? attrFunctionEn;
  AttrAgeGroupEn? attrAgeGroupEn;
  AttrWaistRiseEn? attrWaistRiseEn;
  AttrCollarStyleEn? attrCollarStyleEn;
  LhnCategoryEnLvl0? lhnCategoryEnLvl0;
  // Map<String, int>? lhnCategoryEnLvl1;
  // Map<String, int>? lhnCategoryEnLvl2;
  AttrSleeveLengthEn? attrSleeveLengthEn;
  // Map<String, int>? attrClothingStyleEn;
  AttrGarmentLengthEn? attrGarmentLengthEn;
  AttrNecklineStyleEn? attrNecklineStyleEn;
  // Map<String, int>? attrColorFamilyEnValue;
  AttrDescriptiveLengthEn? attrDescriptiveLengthEn;
  AttrProductCollectionEn? attrProductCollectionEn;
  FieldAcqPromotionLabelEnWeb? fieldAcqPromotionLabelEnWeb;
  // Map<String, int>? attrPresentationProductTypeEn;

  ResultFacets({
    this.attrFitEn,
    // this.attrSizeEn,
    // this.finalPriceEn,
    this.attrContextEn,
    this.attrFunctionEn,
    this.attrAgeGroupEn,
    this.attrWaistRiseEn,
    this.attrCollarStyleEn,
    this.lhnCategoryEnLvl0,
    // this.lhnCategoryEnLvl1,
    // this.lhnCategoryEnLvl2,
    this.attrSleeveLengthEn,
    // this.attrClothingStyleEn,
    this.attrGarmentLengthEn,
    this.attrNecklineStyleEn,
    // this.attrColorFamilyEnValue,
    this.attrDescriptiveLengthEn,
    this.attrProductCollectionEn,
    this.fieldAcqPromotionLabelEnWeb,
    // this.attrPresentationProductTypeEn,
  });

  factory ResultFacets.fromJson(Map<String, dynamic> json) => ResultFacets(
        attrFitEn: json["attr_fit.en"] == null
            ? null
            : AttrFitEn.fromJson(json["attr_fit.en"]),
        // attrSizeEn:
        //     json["attr_size.en"].map((k, v) => MapEntry<String, int>(k, v)),
        // finalPriceEn:
        //     json["final_price.en"].map((k, v) => MapEntry<String, int>(k, v)),
        attrContextEn: json["attr_context.en"] == null
            ? null
            : AttrContextEn.fromJson(json["attr_context.en"]),
        attrFunctionEn: json["attr_function.en"] == null
            ? null
            : AttrFunctionEn.fromJson(json["attr_function.en"]),
        attrAgeGroupEn: json["attr_age_group.en"] == null
            ? null
            : AttrAgeGroupEn.fromJson(json["attr_age_group.en"]),
        attrWaistRiseEn: json["attr_waist_rise.en"] == null
            ? null
            : AttrWaistRiseEn.fromJson(json["attr_waist_rise.en"]),
        attrCollarStyleEn: json["attr_collar_style.en"] == null
            ? null
            : AttrCollarStyleEn.fromJson(json["attr_collar_style.en"]),
        lhnCategoryEnLvl0: json["lhn_category.en.lvl0"] == null
            ? null
            : LhnCategoryEnLvl0.fromJson(json["lhn_category.en.lvl0"]),
        // lhnCategoryEnLvl1: json["lhn_category.en.lvl1"]
        //     .map((k, v) => MapEntry<String, int>(k, v)),
        // lhnCategoryEnLvl2: json["lhn_category.en.lvl2"]
        //     .map((k, v) => MapEntry<String, int>(k, v)),
        attrSleeveLengthEn: json["attr_sleeve_length.en"] == null
            ? null
            : AttrSleeveLengthEn.fromJson(json["attr_sleeve_length.en"]),
        // attrClothingStyleEn: json["attr_clothing_style.en"]
        //     .map((k, v) => MapEntry<String, int>(k, v)),
        attrGarmentLengthEn: json["attr_garment_length.en"] == null
            ? null
            : AttrGarmentLengthEn.fromJson(json["attr_garment_length.en"]),
        attrNecklineStyleEn: json["attr_neckline_style.en"] == null
            ? null
            : AttrNecklineStyleEn.fromJson(json["attr_neckline_style.en"]),
        // attrColorFamilyEnValue: json["attr_color_family.en.value"]
        //     .map((k, v) => MapEntry<String, int>(k, v)),
        attrDescriptiveLengthEn: json["attr_descriptive_length.en"] == null
            ? null
            : AttrDescriptiveLengthEn.fromJson(
                json["attr_descriptive_length.en"]),
        attrProductCollectionEn: json["attr_product_collection.en"] == null
            ? null
            : AttrProductCollectionEn.fromJson(
                json["attr_product_collection.en"]),
        fieldAcqPromotionLabelEnWeb:
            json["field_acq_promotion_label.en.web"] == null
                ? null
                : FieldAcqPromotionLabelEnWeb.fromJson(
                    json["field_acq_promotion_label.en.web"]),
        // attrPresentationProductTypeEn: json["attr_presentation_product_type.en"]
        //     .map((k, v) => MapEntry<String, int>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "attr_fit.en": attrFitEn?.toJson(),
        // "attr_size.en": Map.from(attrSizeEn!)
        //     .map((k, v) => MapEntry<String, dynamic>(k, v)),
        // "final_price.en": Map.from(finalPriceEn!)
        //     .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "attr_context.en": attrContextEn?.toJson(),
        "attr_function.en": attrFunctionEn?.toJson(),
        "attr_age_group.en": attrAgeGroupEn?.toJson(),
        "attr_waist_rise.en": attrWaistRiseEn?.toJson(),
        "attr_collar_style.en": attrCollarStyleEn?.toJson(),
        "lhn_category.en.lvl0": lhnCategoryEnLvl0?.toJson(),
        // "lhn_category.en.lvl1": Map.from(lhnCategoryEnLvl1!)
        //     .map((k, v) => MapEntry<String, dynamic>(k, v)),
        // "lhn_category.en.lvl2": Map.from(lhnCategoryEnLvl2!)
        //     .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "attr_sleeve_length.en": attrSleeveLengthEn?.toJson(),
        // "attr_clothing_style.en": Map.from(attrClothingStyleEn!)
        //     .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "attr_garment_length.en": attrGarmentLengthEn?.toJson(),
        "attr_neckline_style.en": attrNecklineStyleEn?.toJson(),
        // "attr_color_family.en.value": Map.from(attrColorFamilyEnValue!)
        //     .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "attr_descriptive_length.en": attrDescriptiveLengthEn?.toJson(),
        "attr_product_collection.en": attrProductCollectionEn?.toJson(),
        "field_acq_promotion_label.en.web":
            fieldAcqPromotionLabelEnWeb?.toJson(),
        // "attr_presentation_product_type.en":
        //     Map.from(attrPresentationProductTypeEn!)
        //         .map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class AttrAgeGroupEn {
  int? adult;

  AttrAgeGroupEn({
    this.adult,
  });

  factory AttrAgeGroupEn.fromJson(Map<String, dynamic> json) => AttrAgeGroupEn(
        adult: json["Adult"],
      );

  Map<String, dynamic> toJson() => {
        "Adult": adult,
      };
}

class AttrCollarStyleEn {
  int? standUpCollar;
  int? turnDownCollar;
  int? henleyCollar;
  int? resortCollar;
  int? cutAwayCollar;

  AttrCollarStyleEn({
    this.standUpCollar,
    this.turnDownCollar,
    this.henleyCollar,
    this.resortCollar,
    this.cutAwayCollar,
  });

  factory AttrCollarStyleEn.fromJson(Map<String, dynamic> json) =>
      AttrCollarStyleEn(
        standUpCollar: json["Stand-up collar"],
        turnDownCollar: json["Turn-Down collar"],
        henleyCollar: json["Henley collar"],
        resortCollar: json["Resort collar"],
        cutAwayCollar: json["Cut away collar"],
      );

  Map<String, dynamic> toJson() => {
        "Stand-up collar": standUpCollar,
        "Turn-Down collar": turnDownCollar,
        "Henley collar": henleyCollar,
        "Resort collar": resortCollar,
        "Cut away collar": cutAwayCollar,
      };
}

class AttrContextEn {
  int? casual;
  int? sport;
  int? work;
  int? lounge;
  int? officeWear;

  AttrContextEn({
    this.casual,
    this.sport,
    this.work,
    this.lounge,
    this.officeWear,
  });

  factory AttrContextEn.fromJson(Map<String, dynamic> json) => AttrContextEn(
        casual: json["Casual"],
        sport: json["Sport"],
        work: json["Work"],
        lounge: json["Lounge"],
        officeWear: json["Office wear"],
      );

  Map<String, dynamic> toJson() => {
        "Casual": casual,
        "Sport": sport,
        "Work": work,
        "Lounge": lounge,
        "Office wear": officeWear,
      };
}

class AttrDescriptiveLengthEn {
  int? regularLength;
  int? longSleeve;
  int? regularWaist;
  int? long;
  int? shortSleeve;
  int? short;
  int? kneeLength;
  int? sleeveless;
  int? ankleLength;

  AttrDescriptiveLengthEn({
    this.regularLength,
    this.longSleeve,
    this.regularWaist,
    this.long,
    this.shortSleeve,
    this.short,
    this.kneeLength,
    this.sleeveless,
    this.ankleLength,
  });

  factory AttrDescriptiveLengthEn.fromJson(Map<String, dynamic> json) =>
      AttrDescriptiveLengthEn(
        regularLength: json["Regular length"],
        longSleeve: json["Long sleeve"],
        regularWaist: json["Regular waist"],
        long: json["long"],
        shortSleeve: json["Short sleeve"],
        short: json["Short"],
        kneeLength: json["Knee length"],
        sleeveless: json["Sleeveless"],
        ankleLength: json["Ankle length"],
      );

  Map<String, dynamic> toJson() => {
        "Regular length": regularLength,
        "Long sleeve": longSleeve,
        "Regular waist": regularWaist,
        "long": long,
        "Short sleeve": shortSleeve,
        "Short": short,
        "Knee length": kneeLength,
        "Sleeveless": sleeveless,
        "Ankle length": ankleLength,
      };
}

class AttrFitEn {
  int? regularFit;
  int? relaxedFit;
  int? looseFit;
  int? slimFit;
  int? oversized;
  int? skinnyFit;

  AttrFitEn({
    this.regularFit,
    this.relaxedFit,
    this.looseFit,
    this.slimFit,
    this.oversized,
    this.skinnyFit,
  });

  factory AttrFitEn.fromJson(Map<String, dynamic> json) => AttrFitEn(
        regularFit: json["Regular fit"],
        relaxedFit: json["Relaxed fit"],
        looseFit: json["Loose fit"],
        slimFit: json["Slim fit"],
        oversized: json["Oversized"],
        skinnyFit: json["Skinny fit"],
      );

  Map<String, dynamic> toJson() => {
        "Regular fit": regularFit,
        "Relaxed fit": relaxedFit,
        "Loose fit": looseFit,
        "Slim fit": slimFit,
        "Oversized": oversized,
        "Skinny fit": skinnyFit,
      };
}

class AttrFunctionEn {
  int? moistureWicking;
  int? waterRepellent;
  int? windproof;
  int? quickDry;
  int? reflectiveDetails;
  int? breathable;

  AttrFunctionEn({
    this.moistureWicking,
    this.waterRepellent,
    this.windproof,
    this.quickDry,
    this.reflectiveDetails,
    this.breathable,
  });

  factory AttrFunctionEn.fromJson(Map<String, dynamic> json) => AttrFunctionEn(
        moistureWicking: json["Moisture wicking"],
        waterRepellent: json["Water repellent"],
        windproof: json["Windproof"],
        quickDry: json["Quick dry"],
        reflectiveDetails: json["Reflective details"],
        breathable: json["Breathable"],
      );

  Map<String, dynamic> toJson() => {
        "Moisture wicking": moistureWicking,
        "Water repellent": waterRepellent,
        "Windproof": windproof,
        "Quick dry": quickDry,
        "Reflective details": reflectiveDetails,
        "Breathable": breathable,
      };
}

class AttrGarmentLengthEn {
  int? regularLength;
  int? long;
  int? short;
  int? kneeLength;
  int? ankleLength;

  AttrGarmentLengthEn({
    this.regularLength,
    this.long,
    this.short,
    this.kneeLength,
    this.ankleLength,
  });

  factory AttrGarmentLengthEn.fromJson(Map<String, dynamic> json) =>
      AttrGarmentLengthEn(
        regularLength: json["Regular length"],
        long: json["Long"],
        short: json["Short"],
        kneeLength: json["Knee length"],
        ankleLength: json["Ankle length"],
      );

  Map<String, dynamic> toJson() => {
        "Regular length": regularLength,
        "Long": long,
        "Short": short,
        "Knee length": kneeLength,
        "Ankle length": ankleLength,
      };
}

class AttrNecklineStyleEn {
  int? roundNeck;
  int? crewNeck;
  int? deepNeckline;
  int? vNeck;

  AttrNecklineStyleEn({
    this.roundNeck,
    this.crewNeck,
    this.deepNeckline,
    this.vNeck,
  });

  factory AttrNecklineStyleEn.fromJson(Map<String, dynamic> json) =>
      AttrNecklineStyleEn(
        roundNeck: json["Round neck"],
        crewNeck: json["Crew neck"],
        deepNeckline: json["Deep neckline"],
        vNeck: json["V-neck"],
      );

  Map<String, dynamic> toJson() => {
        "Round neck": roundNeck,
        "Crew neck": crewNeck,
        "Deep neckline": deepNeckline,
        "V-neck": vNeck,
      };
}

class AttrProductCollectionEn {
  int? ramadan;

  AttrProductCollectionEn({
    this.ramadan,
  });

  factory AttrProductCollectionEn.fromJson(Map<String, dynamic> json) =>
      AttrProductCollectionEn(
        ramadan: json["Ramadan"],
      );

  Map<String, dynamic> toJson() => {
        "Ramadan": ramadan,
      };
}

class AttrSleeveLengthEn {
  int? longSleeve;
  int? shortSleeve;
  int? sleeveless;

  AttrSleeveLengthEn({
    this.longSleeve,
    this.shortSleeve,
    this.sleeveless,
  });

  factory AttrSleeveLengthEn.fromJson(Map<String, dynamic> json) =>
      AttrSleeveLengthEn(
        longSleeve: json["Long sleeve"],
        shortSleeve: json["Short sleeve"],
        sleeveless: json["Sleeveless"],
      );

  Map<String, dynamic> toJson() => {
        "Long sleeve": longSleeve,
        "Short sleeve": shortSleeve,
        "Sleeveless": sleeveless,
      };
}

class AttrWaistRiseEn {
  int? regularWaist;

  AttrWaistRiseEn({
    this.regularWaist,
  });

  factory AttrWaistRiseEn.fromJson(Map<String, dynamic> json) =>
      AttrWaistRiseEn(
        regularWaist: json["Regular waist"],
      );

  Map<String, dynamic> toJson() => {
        "Regular waist": regularWaist,
      };
}

class FieldAcqPromotionLabelEnWeb {
  int? the25OffOnCheckout;

  FieldAcqPromotionLabelEnWeb({
    this.the25OffOnCheckout,
  });

  factory FieldAcqPromotionLabelEnWeb.fromJson(Map<String, dynamic> json) =>
      FieldAcqPromotionLabelEnWeb(
        the25OffOnCheckout: json["25% off on checkout"],
      );

  Map<String, dynamic> toJson() => {
        "25% off on checkout": the25OffOnCheckout,
      };
}

class LhnCategoryEnLvl0 {
  int? men;
  int? sport;
  int? sale;

  LhnCategoryEnLvl0({
    this.men,
    this.sport,
    this.sale,
  });

  factory LhnCategoryEnLvl0.fromJson(Map<String, dynamic> json) =>
      LhnCategoryEnLvl0(
        men: json["Men"],
        sport: json["Sport"],
        sale: json["Sale"],
      );

  Map<String, dynamic> toJson() => {
        "Men": men,
        "Sport": sport,
        "Sale": sale,
      };
}

class FacetsStats {
  EEn? attrSizeEn;
  EEn? finalPriceEn;

  FacetsStats({
    this.attrSizeEn,
    this.finalPriceEn,
  });

  factory FacetsStats.fromJson(Map<String, dynamic> json) => FacetsStats(
        attrSizeEn: json["attr_size.en"] == null
            ? null
            : EEn.fromJson(json["attr_size.en"]),
        finalPriceEn: json["final_price.en"] == null
            ? null
            : EEn.fromJson(json["final_price.en"]),
      );

  Map<String, dynamic> toJson() => {
        "attr_size.en": attrSizeEn?.toJson(),
        "final_price.en": finalPriceEn?.toJson(),
      };
}

class EEn {
  int? min;
  int? max;
  int? avg;
  int? sum;

  EEn({
    this.min,
    this.max,
    this.avg,
    this.sum,
  });

  factory EEn.fromJson(Map<String, dynamic> json) => EEn(
        min: json["min"],
        max: json["max"],
        avg: json["avg"],
        sum: json["sum"],
      );

  Map<String, dynamic> toJson() => {
        "min": min,
        "max": max,
        "avg": avg,
        "sum": sum,
      };
}

class Hit {
  Changed? created;
  int? nid;
  String? sku;
  AttrProductBrand? title;
  String? searchApiId;
  String? searchApiDatasource;
  String? searchApiLanguage;
  AtbProductData? atbProductData;
  Gtm? gtm;
  AttrProductBrand? body;
  AttrProductBrand? renderedPrice;
  Changed? originalPrice;
  Changed? price;
  Changed? finalPrice;
  AttrProductBrand? fixedPrice;
  Changed? discount;
  AttrSellingPrice? attrSellingPrice;
  HighestDiscountPrice? highestDiscountPrice;
  List<String>? fieldConfiguredSkus;
  Attr? attrDeliveryWays;
  AttrProductBrand? attrProductBrand;
  Attr? attrColor;
  Attr? attrSize;
  Attr? attrColorLabel;
  Attr? attrArticlePattern;
  AttrColorFamily? attrColorFamily;
  Attr? attrSizeGroupCode;
  Attr? attrAgeGroup;
  Attr? attrPresentationProductType;
  Attr? attrClothingStyle;
  Attr? attrCollarStyle;
  Attr? attrFit;
  Attr? attrDescriptiveLength;
  Attr? attrGarmentLength;
  Attr? attrSleeveLength;
  AttrArticleSwatches? attrArticleSwatches;
  Attr? attrExpressDelivery;
  Promotions? promotions;
  List<Media>? media;
  List<Media>? mediaPdp;
  AttrProductBrand? url;
  AttrArticleSwatches? productLabels;
  int? stockQuantity;
  int? stock;
  Changed? inStock;
  Changed? changed;
  FieldCategoryName? fieldCategoryName;
  FieldCategoryName? lhnCategory;
  FieldCategory? fieldCategory;
  AttrProductBrand? isNew;
  IsBuyable? isBuyable;
  Changed? newArrivals;
  AttrProductBrand? attrStyleCode;
  Swatches? swatches;
  String? objectId;
  CollectionLabels? collectionLabels;
  AttrProductBrand? attrStyle;
  Attr? attrProductKeyFabrics;
  Attr? attrNecklineStyle;
  String? attrAimsBarcode;
  Attr? attrWaistRise;
  int? bestSellers;
  Attr? attrContext;
  Attr? attrArticleVisualDescription;
  Attr? attrArticleLicenseItem;
  List<String>? promotionNid;
  FieldAcqPromotionLabel? fieldAcqPromotionLabel;
  Attr? attrFunction;

  Hit({
    this.created,
    this.nid,
    this.sku,
    this.title,
    this.searchApiId,
    this.searchApiDatasource,
    this.searchApiLanguage,
    this.atbProductData,
    this.gtm,
    this.body,
    this.renderedPrice,
    this.originalPrice,
    this.price,
    this.finalPrice,
    this.fixedPrice,
    this.discount,
    this.attrSellingPrice,
    this.highestDiscountPrice,
    this.fieldConfiguredSkus,
    this.attrDeliveryWays,
    this.attrProductBrand,
    this.attrColor,
    this.attrSize,
    this.attrColorLabel,
    this.attrArticlePattern,
    this.attrColorFamily,
    this.attrSizeGroupCode,
    this.attrAgeGroup,
    this.attrPresentationProductType,
    this.attrClothingStyle,
    this.attrCollarStyle,
    this.attrFit,
    this.attrDescriptiveLength,
    this.attrGarmentLength,
    this.attrSleeveLength,
    this.attrArticleSwatches,
    this.attrExpressDelivery,
    this.promotions,
    this.media,
    this.mediaPdp,
    this.url,
    this.productLabels,
    this.stockQuantity,
    this.stock,
    this.inStock,
    this.changed,
    this.fieldCategoryName,
    this.lhnCategory,
    this.fieldCategory,
    this.isNew,
    this.isBuyable,
    this.newArrivals,
    this.attrStyleCode,
    this.swatches,
    this.objectId,
    this.collectionLabels,
    this.attrStyle,
    this.attrProductKeyFabrics,
    this.attrNecklineStyle,
    this.attrAimsBarcode,
    this.attrWaistRise,
    this.bestSellers,
    this.attrContext,
    this.attrArticleVisualDescription,
    this.attrArticleLicenseItem,
    this.promotionNid,
    this.fieldAcqPromotionLabel,
    this.attrFunction,
  });

  factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        created:
            json["created"] == null ? null : Changed.fromJson(json["created"]),
        nid: json["nid"],
        sku: json["sku"],
        title: json["title"] == null
            ? null
            : AttrProductBrand.fromJson(json["title"]),
        searchApiId: json["search_api_id"],
        searchApiDatasource: json["search_api_datasource"],
        searchApiLanguage: json["search_api_language"],
        atbProductData: json["atb_product_data"] == null
            ? null
            : AtbProductData.fromJson(json["atb_product_data"]),
        gtm: json["gtm"] == null ? null : Gtm.fromJson(json["gtm"]),
        body: json["body"] == null
            ? null
            : AttrProductBrand.fromJson(json["body"]),
        renderedPrice: json["rendered_price"] == null
            ? null
            : AttrProductBrand.fromJson(json["rendered_price"]),
        originalPrice: json["original_price"] == null
            ? null
            : Changed.fromJson(json["original_price"]),
        price: json["price"] == null ? null : Changed.fromJson(json["price"]),
        finalPrice: json["final_price"] == null
            ? null
            : Changed.fromJson(json["final_price"]),
        fixedPrice: json["fixed_price"] == null
            ? null
            : AttrProductBrand.fromJson(json["fixed_price"]),
        discount: json["discount"] == null
            ? null
            : Changed.fromJson(json["discount"]),
        attrSellingPrice: json["attr_selling_price"] == null
            ? null
            : AttrSellingPrice.fromJson(json["attr_selling_price"]),
        highestDiscountPrice: json["highest_discount_price"] == null
            ? null
            : HighestDiscountPrice.fromJson(json["highest_discount_price"]),
        fieldConfiguredSkus: json["field_configured_skus"] == null
            ? []
            : List<String>.from(json["field_configured_skus"]!.map((x) => x)),
        attrDeliveryWays: json["attr_delivery_ways"] == null
            ? null
            : Attr.fromJson(json["attr_delivery_ways"]),
        attrProductBrand: json["attr_product_brand"] == null
            ? null
            : AttrProductBrand.fromJson(json["attr_product_brand"]),
        attrColor: json["attr_color"] == null
            ? null
            : Attr.fromJson(json["attr_color"]),
        attrSize:
            json["attr_size"] == null ? null : Attr.fromJson(json["attr_size"]),
        attrColorLabel: json["attr_color_label"] == null
            ? null
            : Attr.fromJson(json["attr_color_label"]),
        attrArticlePattern: json["attr_article_pattern"] == null
            ? null
            : Attr.fromJson(json["attr_article_pattern"]),
        attrColorFamily: json["attr_color_family"] == null
            ? null
            : AttrColorFamily.fromJson(json["attr_color_family"]),
        attrSizeGroupCode: json["attr_size_group_code"] == null
            ? null
            : Attr.fromJson(json["attr_size_group_code"]),
        attrAgeGroup: json["attr_age_group"] == null
            ? null
            : Attr.fromJson(json["attr_age_group"]),
        attrPresentationProductType:
            json["attr_presentation_product_type"] == null
                ? null
                : Attr.fromJson(json["attr_presentation_product_type"]),
        attrClothingStyle: json["attr_clothing_style"] == null
            ? null
            : Attr.fromJson(json["attr_clothing_style"]),
        attrCollarStyle: json["attr_collar_style"] == null
            ? null
            : Attr.fromJson(json["attr_collar_style"]),
        attrFit:
            json["attr_fit"] == null ? null : Attr.fromJson(json["attr_fit"]),
        attrDescriptiveLength: json["attr_descriptive_length"] == null
            ? null
            : Attr.fromJson(json["attr_descriptive_length"]),
        attrGarmentLength: json["attr_garment_length"] == null
            ? null
            : Attr.fromJson(json["attr_garment_length"]),
        attrSleeveLength: json["attr_sleeve_length"] == null
            ? null
            : Attr.fromJson(json["attr_sleeve_length"]),
        attrArticleSwatches: json["attr_article_swatches"] == null
            ? null
            : AttrArticleSwatches.fromJson(json["attr_article_swatches"]),
        attrExpressDelivery: json["attr_express_delivery"] == null
            ? null
            : Attr.fromJson(json["attr_express_delivery"]),
        promotions: json["promotions"] == null
            ? null
            : Promotions.fromJson(json["promotions"]),
        media: json["media"] == null
            ? []
            : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
        mediaPdp: json["media_pdp"] == null
            ? []
            : List<Media>.from(
                json["media_pdp"]!.map((x) => Media.fromJson(x))),
        url:
            json["url"] == null ? null : AttrProductBrand.fromJson(json["url"]),
        productLabels: json["product_labels"] == null
            ? null
            : AttrArticleSwatches.fromJson(json["product_labels"]),
        stockQuantity: json["stock_quantity"],
        stock: json["stock"],
        inStock: json["in_stock"] == null
            ? null
            : Changed.fromJson(json["in_stock"]),
        changed:
            json["changed"] == null ? null : Changed.fromJson(json["changed"]),
        fieldCategoryName: json["field_category_name"] == null
            ? null
            : FieldCategoryName.fromJson(json["field_category_name"]),
        lhnCategory: json["lhn_category"] == null
            ? null
            : FieldCategoryName.fromJson(json["lhn_category"]),
        fieldCategory: json["field_category"] == null
            ? null
            : FieldCategory.fromJson(json["field_category"]),
        isNew: json["is_new"] == null
            ? null
            : AttrProductBrand.fromJson(json["is_new"]),
        isBuyable: json["is_buyable"] == null
            ? null
            : IsBuyable.fromJson(json["is_buyable"]),
        newArrivals: json["new_arrivals"] == null
            ? null
            : Changed.fromJson(json["new_arrivals"]),
        attrStyleCode: json["attr_style_code"] == null
            ? null
            : AttrProductBrand.fromJson(json["attr_style_code"]),
        swatches: json["swatches"] == null
            ? null
            : Swatches.fromJson(json["swatches"]),
        objectId: json["objectID"],
        collectionLabels: json["collection_labels"] == null
            ? null
            : CollectionLabels.fromJson(json["collection_labels"]),
        attrStyle: json["attr_style"] == null
            ? null
            : AttrProductBrand.fromJson(json["attr_style"]),
        attrProductKeyFabrics: json["attr_product_key_fabrics"] == null
            ? null
            : Attr.fromJson(json["attr_product_key_fabrics"]),
        attrNecklineStyle: json["attr_neckline_style"] == null
            ? null
            : Attr.fromJson(json["attr_neckline_style"]),
        attrAimsBarcode: json["attr_aims_barcode"],
        attrWaistRise: json["attr_waist_rise"] == null
            ? null
            : Attr.fromJson(json["attr_waist_rise"]),
        bestSellers: json["best_sellers"],
        attrContext: json["attr_context"] == null
            ? null
            : Attr.fromJson(json["attr_context"]),
        attrArticleVisualDescription:
            json["attr_article_visual_description"] == null
                ? null
                : Attr.fromJson(json["attr_article_visual_description"]),
        attrArticleLicenseItem: json["attr_article_license_item"] == null
            ? null
            : Attr.fromJson(json["attr_article_license_item"]),
        promotionNid: json["promotion_nid"] == null
            ? []
            : List<String>.from(json["promotion_nid"]!.map((x) => x)),
        fieldAcqPromotionLabel: json["field_acq_promotion_label"] == null
            ? null
            : FieldAcqPromotionLabel.fromJson(
                json["field_acq_promotion_label"]),
        attrFunction: json["attr_function"] == null
            ? null
            : Attr.fromJson(json["attr_function"]),
      );

  Map<String, dynamic> toJson() => {
        "created": created?.toJson(),
        "nid": nid,
        "sku": sku,
        "title": title?.toJson(),
        "search_api_id": searchApiId,
        "search_api_datasource": searchApiDatasource,
        "search_api_language": searchApiLanguage,
        "atb_product_data": atbProductData?.toJson(),
        "gtm": gtm?.toJson(),
        "body": body?.toJson(),
        "rendered_price": renderedPrice?.toJson(),
        "original_price": originalPrice?.toJson(),
        "price": price?.toJson(),
        "final_price": finalPrice?.toJson(),
        "fixed_price": fixedPrice?.toJson(),
        "discount": discount?.toJson(),
        "attr_selling_price": attrSellingPrice?.toJson(),
        "highest_discount_price": highestDiscountPrice?.toJson(),
        "field_configured_skus": fieldConfiguredSkus == null
            ? []
            : List<dynamic>.from(fieldConfiguredSkus!.map((x) => x)),
        "attr_delivery_ways": attrDeliveryWays?.toJson(),
        "attr_product_brand": attrProductBrand?.toJson(),
        "attr_color": attrColor?.toJson(),
        "attr_size": attrSize?.toJson(),
        "attr_color_label": attrColorLabel?.toJson(),
        "attr_article_pattern": attrArticlePattern?.toJson(),
        "attr_color_family": attrColorFamily?.toJson(),
        "attr_size_group_code": attrSizeGroupCode?.toJson(),
        "attr_age_group": attrAgeGroup?.toJson(),
        "attr_presentation_product_type": attrPresentationProductType?.toJson(),
        "attr_clothing_style": attrClothingStyle?.toJson(),
        "attr_collar_style": attrCollarStyle?.toJson(),
        "attr_fit": attrFit?.toJson(),
        "attr_descriptive_length": attrDescriptiveLength?.toJson(),
        "attr_garment_length": attrGarmentLength?.toJson(),
        "attr_sleeve_length": attrSleeveLength?.toJson(),
        "attr_article_swatches": attrArticleSwatches?.toJson(),
        "attr_express_delivery": attrExpressDelivery?.toJson(),
        "promotions": promotions?.toJson(),
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
        "media_pdp": mediaPdp == null
            ? []
            : List<dynamic>.from(mediaPdp!.map((x) => x.toJson())),
        "url": url?.toJson(),
        "product_labels": productLabels?.toJson(),
        "stock_quantity": stockQuantity,
        "stock": stock,
        "in_stock": inStock?.toJson(),
        "changed": changed?.toJson(),
        "field_category_name": fieldCategoryName?.toJson(),
        "lhn_category": lhnCategory?.toJson(),
        "field_category": fieldCategory?.toJson(),
        "is_new": isNew?.toJson(),
        "is_buyable": isBuyable?.toJson(),
        "new_arrivals": newArrivals?.toJson(),
        "attr_style_code": attrStyleCode?.toJson(),
        "swatches": swatches?.toJson(),
        "objectID": objectId,
        "collection_labels": collectionLabels?.toJson(),
        "attr_style": attrStyle?.toJson(),
        "attr_product_key_fabrics": attrProductKeyFabrics?.toJson(),
        "attr_neckline_style": attrNecklineStyle?.toJson(),
        "attr_aims_barcode": attrAimsBarcode,
        "attr_waist_rise": attrWaistRise?.toJson(),
        "best_sellers": bestSellers,
        "attr_context": attrContext?.toJson(),
        "attr_article_visual_description":
            attrArticleVisualDescription?.toJson(),
        "attr_article_license_item": attrArticleLicenseItem?.toJson(),
        "promotion_nid": promotionNid == null
            ? []
            : List<dynamic>.from(promotionNid!.map((x) => x)),
        "field_acq_promotion_label": fieldAcqPromotionLabel?.toJson(),
        "attr_function": attrFunction?.toJson(),
      };
}

class AtbProductData {
  AtbProductDataAr? en;
  AtbProductDataAr? ar;

  AtbProductData({
    this.en,
    this.ar,
  });

  factory AtbProductData.fromJson(Map<String, dynamic> json) => AtbProductData(
        en: json["en"] == null ? null : AtbProductDataAr.fromJson(json["en"]),
        ar: json["ar"] == null ? null : AtbProductDataAr.fromJson(json["ar"]),
      );

  Map<String, dynamic> toJson() => {
        "en": en?.toJson(),
        "ar": ar?.toJson(),
      };
}

class AtbProductDataAr {
  String? skuType;

  AtbProductDataAr({
    this.skuType,
  });

  factory AtbProductDataAr.fromJson(Map<String, dynamic> json) =>
      AtbProductDataAr(
        skuType: json["sku_type"],
      );

  Map<String, dynamic> toJson() => {
        "sku_type": skuType,
      };
}

class Attr {
  List<String>? en;
  List<String>? ar;

  Attr({
    this.en,
    this.ar,
  });

  factory Attr.fromJson(Map<String, dynamic> json) => Attr(
        en: json["en"] == null
            ? []
            : List<String>.from(json["en"]!.map((x) => x)),
        ar: json["ar"] == null
            ? []
            : List<String>.from(json["ar"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? [] : List<dynamic>.from(en!.map((x) => x)),
        "ar": ar == null ? [] : List<dynamic>.from(ar!.map((x) => x)),
      };
}

class AttrArticleSwatches {
  List<AttrArticleSwatchesAr?>? en;
  List<AttrArticleSwatchesAr?>? ar;

  AttrArticleSwatches({
    this.en,
    this.ar,
  });

  factory AttrArticleSwatches.fromJson(Map<String, dynamic> json) =>
      AttrArticleSwatches(
        en: json["en"] == null
            ? []
            : List<AttrArticleSwatchesAr?>.from(json["en"]!.map(
                (x) => x == null ? null : AttrArticleSwatchesAr.fromJson(x))),
        ar: json["ar"] == null
            ? []
            : List<AttrArticleSwatchesAr?>.from(json["ar"]!.map(
                (x) => x == null ? null : AttrArticleSwatchesAr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? [] : List<dynamic>.from(en!.map((x) => x?.toJson())),
        "ar": ar == null ? [] : List<dynamic>.from(ar!.map((x) => x?.toJson())),
      };
}

class AttrArticleSwatchesAr {
  String? articleSkuCode;
  String? rgbColor;
  String? swatchType;

  AttrArticleSwatchesAr({
    this.articleSkuCode,
    this.rgbColor,
    this.swatchType,
  });

  factory AttrArticleSwatchesAr.fromJson(Map<String, dynamic> json) =>
      AttrArticleSwatchesAr(
        articleSkuCode: json["article_sku_code"],
        rgbColor: json["rgb_color"],
        swatchType: json["swatch_type"],
      );

  Map<String, dynamic> toJson() => {
        "article_sku_code": articleSkuCode,
        "rgb_color": rgbColor,
        "swatch_type": swatchType,
      };
}

class AttrColorFamily {
  List<AttrColorFamilyAr>? en;
  List<AttrColorFamilyAr>? ar;

  AttrColorFamily({
    this.en,
    this.ar,
  });

  factory AttrColorFamily.fromJson(Map<String, dynamic> json) =>
      AttrColorFamily(
        en: json["en"] == null
            ? []
            : List<AttrColorFamilyAr>.from(
                json["en"]!.map((x) => AttrColorFamilyAr.fromJson(x))),
        ar: json["ar"] == null
            ? []
            : List<AttrColorFamilyAr>.from(
                json["ar"]!.map((x) => AttrColorFamilyAr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? [] : List<dynamic>.from(en!.map((x) => x.toJson())),
        "ar": ar == null ? [] : List<dynamic>.from(ar!.map((x) => x.toJson())),
      };
}

class AttrColorFamilyAr {
  String? value;
  String? label;
  String? swatchColor;
  String? swatchImage;

  AttrColorFamilyAr({
    this.value,
    this.label,
    this.swatchColor,
    this.swatchImage,
  });

  factory AttrColorFamilyAr.fromJson(Map<String, dynamic> json) =>
      AttrColorFamilyAr(
        value: json["value"],
        label: json["label"],
        swatchColor: json["swatch_color"],
        swatchImage: json["swatch_image"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "label": label,
        "swatch_color": swatchColor,
        "swatch_image": swatchImage,
      };
}

class AttrProductBrand {
  String? en;
  String? ar;

  AttrProductBrand({
    this.en,
    this.ar,
  });

  factory AttrProductBrand.fromJson(Map<String, dynamic> json) =>
      AttrProductBrand(
        en: json["en"],
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
      };
}

class AttrSellingPrice {
  List<int>? en;
  List<int>? ar;

  AttrSellingPrice({
    this.en,
    this.ar,
  });

  factory AttrSellingPrice.fromJson(Map<String, dynamic> json) =>
      AttrSellingPrice(
        en: json["en"] == null ? [] : List<int>.from(json["en"]!.map((x) => x)),
        ar: json["ar"] == null ? [] : List<int>.from(json["ar"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? [] : List<dynamic>.from(en!.map((x) => x)),
        "ar": ar == null ? [] : List<dynamic>.from(ar!.map((x) => x)),
      };
}

class Changed {
  int? en;
  int? ar;

  Changed({
    this.en,
    this.ar,
  });

  factory Changed.fromJson(Map<String, dynamic> json) => Changed(
        en: json["en"],
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
      };
}

class CollectionLabels {
  CollectionLabelsAr? en;
  CollectionLabelsAr? ar;

  CollectionLabels({
    this.en,
    this.ar,
  });

  factory CollectionLabels.fromJson(Map<String, dynamic> json) =>
      CollectionLabels(
        en: json["en"] == null ? null : CollectionLabelsAr.fromJson(json["en"]),
        ar: json["ar"] == null ? null : CollectionLabelsAr.fromJson(json["ar"]),
      );

  Map<String, dynamic> toJson() => {
        "en": en?.toJson(),
        "ar": ar?.toJson(),
      };
}

class CollectionLabelsAr {
  String? attrProductEnvironment;

  CollectionLabelsAr({
    this.attrProductEnvironment,
  });

  factory CollectionLabelsAr.fromJson(Map<String, dynamic> json) =>
      CollectionLabelsAr(
        attrProductEnvironment: json["attr_product_environment"],
      );

  Map<String, dynamic> toJson() => {
        "attr_product_environment": attrProductEnvironment,
      };
}

class FieldAcqPromotionLabel {
  FieldAcqPromotionLabelAr? en;
  FieldAcqPromotionLabelAr? ar;

  FieldAcqPromotionLabel({
    this.en,
    this.ar,
  });

  factory FieldAcqPromotionLabel.fromJson(Map<String, dynamic> json) =>
      FieldAcqPromotionLabel(
        en: json["en"] == null
            ? null
            : FieldAcqPromotionLabelAr.fromJson(json["en"]),
        ar: json["ar"] == null
            ? null
            : FieldAcqPromotionLabelAr.fromJson(json["ar"]),
      );

  Map<String, dynamic> toJson() => {
        "en": en?.toJson(),
        "ar": ar?.toJson(),
      };
}

class FieldAcqPromotionLabelAr {
  List<String>? web;
  List<String>? app;

  FieldAcqPromotionLabelAr({
    this.web,
    this.app,
  });

  factory FieldAcqPromotionLabelAr.fromJson(Map<String, dynamic> json) =>
      FieldAcqPromotionLabelAr(
        web: json["web"] == null
            ? []
            : List<String>.from(json["web"]!.map((x) => x)),
        app: json["app"] == null
            ? []
            : List<String>.from(json["app"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "web": web == null ? [] : List<dynamic>.from(web!.map((x) => x)),
        "app": app == null ? [] : List<dynamic>.from(app!.map((x) => x)),
      };
}

class FieldCategory {
  List<FieldCategoryAr>? en;
  List<FieldCategoryAr>? ar;

  FieldCategory({
    this.en,
    this.ar,
  });

  factory FieldCategory.fromJson(Map<String, dynamic> json) => FieldCategory(
        en: json["en"] == null
            ? []
            : List<FieldCategoryAr>.from(
                json["en"]!.map((x) => FieldCategoryAr.fromJson(x))),
        ar: json["ar"] == null
            ? []
            : List<FieldCategoryAr>.from(
                json["ar"]!.map((x) => FieldCategoryAr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? [] : List<dynamic>.from(en!.map((x) => x.toJson())),
        "ar": ar == null ? [] : List<dynamic>.from(ar!.map((x) => x.toJson())),
      };
}

class FieldCategoryAr {
  String? lvl0;

  FieldCategoryAr({
    this.lvl0,
  });

  factory FieldCategoryAr.fromJson(Map<String, dynamic> json) =>
      FieldCategoryAr(
        lvl0: json["lvl0"],
      );

  Map<String, dynamic> toJson() => {
        "lvl0": lvl0,
      };
}

class FieldCategoryName {
  Map<String, List<String>>? en;
  Map<String, List<String>>? ar;

  FieldCategoryName({
    this.en,
    this.ar,
  });

  factory FieldCategoryName.fromJson(Map<String, dynamic> json) =>
      FieldCategoryName(
        en: json["en"].map((k, v) {
          return MapEntry<String, List<String>>(
            k,
            List<String>.from(v.map((x) => x.toString())),
          );
        }),
        ar: json["ar"].map((k, v) {
          return MapEntry<String, List<String>>(
            k,
            List<String>.from(v.map((x) => x.toString())),
          );
        }),
      );

  Map<String, dynamic> toJson() => {
        "en": Map.from(en!).map((k, v) =>
            MapEntry<String, dynamic>(k, List<dynamic>.from(v.map((x) => x)))),
        "ar": Map.from(ar!).map((k, v) =>
            MapEntry<String, dynamic>(k, List<dynamic>.from(v.map((x) => x)))),
      };
}

class Gtm {
  String? gtmCategory;
  String? gtmType;
  String? gtmContainer;
  String? gtmViewMode;
  String? gtmDepartmentName;
  int? gtmDepartmentId;
  String? gtmMainSku;
  String? dataInsightsQueryId;
  String? gtmName;
  String? gtmProductSku;
  String? gtmProductSkuClassIdentifier;
  String? gtmSkuType;
  String? gtmBrand;
  int? gtmDimension4;
  String? gtmPrice;
  String? gtmDimension3;
  String? gtmStock;
  String? gtmMagentoProductId;
  String? gtmProductStyleCode;

  Gtm({
    this.gtmCategory,
    this.gtmType,
    this.gtmContainer,
    this.gtmViewMode,
    this.gtmDepartmentName,
    this.gtmDepartmentId,
    this.gtmMainSku,
    this.dataInsightsQueryId,
    this.gtmName,
    this.gtmProductSku,
    this.gtmProductSkuClassIdentifier,
    this.gtmSkuType,
    this.gtmBrand,
    this.gtmDimension4,
    this.gtmPrice,
    this.gtmDimension3,
    this.gtmStock,
    this.gtmMagentoProductId,
    this.gtmProductStyleCode,
  });

  factory Gtm.fromJson(Map<String, dynamic> json) => Gtm(
        gtmCategory: json["gtm-category"],
        gtmType: json["gtm-type"],
        gtmContainer: json["gtm-container"],
        gtmViewMode: json["gtm-view-mode"],
        gtmDepartmentName: json["gtm-department-name"],
        gtmDepartmentId: json["gtm-department-id"],
        gtmMainSku: json["gtm-main-sku"],
        dataInsightsQueryId: json["data-insights-query-id"],
        gtmName: json["gtm-name"],
        gtmProductSku: json["gtm-product-sku"],
        gtmProductSkuClassIdentifier: json["gtm-product-sku-class-identifier"],
        gtmSkuType: json["gtm-sku-type"],
        gtmBrand: json["gtm-brand"],
        gtmDimension4: json["gtm-dimension4"],
        gtmPrice: json["gtm-price"],
        gtmDimension3: json["gtm-dimension3"],
        gtmStock: json["gtm-stock"],
        gtmMagentoProductId: json["gtm-magento-product-id"],
        gtmProductStyleCode: json["gtm-product-style-code"],
      );

  Map<String, dynamic> toJson() => {
        "gtm-category": gtmCategory,
        "gtm-type": gtmType,
        "gtm-container": gtmContainer,
        "gtm-view-mode": gtmViewMode,
        "gtm-department-name": gtmDepartmentName,
        "gtm-department-id": gtmDepartmentId,
        "gtm-main-sku": gtmMainSku,
        "data-insights-query-id": dataInsightsQueryId,
        "gtm-name": gtmName,
        "gtm-product-sku": gtmProductSku,
        "gtm-product-sku-class-identifier": gtmProductSkuClassIdentifier,
        "gtm-sku-type": gtmSkuType,
        "gtm-brand": gtmBrand,
        "gtm-dimension4": gtmDimension4,
        "gtm-price": gtmPrice,
        "gtm-dimension3": gtmDimension3,
        "gtm-stock": gtmStock,
        "gtm-magento-product-id": gtmMagentoProductId,
        "gtm-product-style-code": gtmProductStyleCode,
      };
}

class HighestDiscountPrice {
  HighestDiscountPriceAr? en;
  HighestDiscountPriceAr? ar;

  HighestDiscountPrice({
    this.en,
    this.ar,
  });

  factory HighestDiscountPrice.fromJson(Map<String, dynamic> json) =>
      HighestDiscountPrice(
        en: json["en"] == null
            ? null
            : HighestDiscountPriceAr.fromJson(json["en"]),
        ar: json["ar"] == null
            ? null
            : HighestDiscountPriceAr.fromJson(json["ar"]),
      );

  Map<String, dynamic> toJson() => {
        "en": en?.toJson(),
        "ar": ar?.toJson(),
      };
}

class HighestDiscountPriceAr {
  int? price;
  int? finalPrice;

  HighestDiscountPriceAr({
    this.price,
    this.finalPrice,
  });

  factory HighestDiscountPriceAr.fromJson(Map<String, dynamic> json) =>
      HighestDiscountPriceAr(
        price: json["price"],
        finalPrice: json["final_price"],
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "final_price": finalPrice,
      };
}

class IsBuyable {
  bool? en;
  bool? ar;

  IsBuyable({
    this.en,
    this.ar,
  });

  factory IsBuyable.fromJson(Map<String, dynamic> json) => IsBuyable(
        en: json["en"],
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
      };
}

class Media {
  String? url;
  String? imageType;

  Media({
    this.url,
    this.imageType,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        url: json["url"],
        imageType: json["image_type"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "image_type": imageType,
      };
}

class Promotions {
  List<PromotionsAr>? en;
  List<PromotionsAr>? ar;

  Promotions({
    this.en,
    this.ar,
  });

  factory Promotions.fromJson(Map<String, dynamic> json) => Promotions(
        en: json["en"] == null
            ? []
            : List<PromotionsAr>.from(
                json["en"]!.map((x) => PromotionsAr.fromJson(x))),
        ar: json["ar"] == null
            ? []
            : List<PromotionsAr>.from(
                json["ar"]!.map((x) => PromotionsAr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? [] : List<dynamic>.from(en!.map((x) => x.toJson())),
        "ar": ar == null ? [] : List<dynamic>.from(ar!.map((x) => x.toJson())),
      };
}

class PromotionsAr {
  String? type;
  String? text;
  String? description;
  String? discountType;
  String? discountValue;
  String? ruleId;
  int? promoType;
  List<String>? context;
  String? urlEn;
  String? urlAr;
  String? id;

  PromotionsAr({
    this.type,
    this.text,
    this.description,
    this.discountType,
    this.discountValue,
    this.ruleId,
    this.promoType,
    this.context,
    this.urlEn,
    this.urlAr,
    this.id,
  });

  factory PromotionsAr.fromJson(Map<String, dynamic> json) => PromotionsAr(
        type: json["type"],
        text: json["text"],
        description: json["description"],
        discountType: json["discount_type"],
        discountValue: json["discount_value"],
        ruleId: json["rule_id"],
        promoType: json["promo_type"],
        context: json["context"] == null
            ? []
            : List<String>.from(json["context"]!.map((x) => x)),
        urlEn: json["url_en"],
        urlAr: json["url_ar"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "text": text,
        "description": description,
        "discount_type": discountType,
        "discount_value": discountValue,
        "rule_id": ruleId,
        "promo_type": promoType,
        "context":
            context == null ? [] : List<dynamic>.from(context!.map((x) => x)),
        "url_en": urlEn,
        "url_ar": urlAr,
        "id": id,
      };
}

class Swatches {
  List<SwatchesAr>? en;
  List<SwatchesAr>? ar;

  Swatches({
    this.en,
    this.ar,
  });

  factory Swatches.fromJson(Map<String, dynamic> json) => Swatches(
        en: json["en"] == null
            ? []
            : List<SwatchesAr>.from(
                json["en"]!.map((x) => SwatchesAr.fromJson(x))),
        ar: json["ar"] == null
            ? []
            : List<SwatchesAr>.from(
                json["ar"]!.map((x) => SwatchesAr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? [] : List<dynamic>.from(en!.map((x) => x.toJson())),
        "ar": ar == null ? [] : List<dynamic>.from(ar!.map((x) => x.toJson())),
      };
}

class SwatchesAr {
  dynamic childSkuCode;
  String? rgbColor;

  SwatchesAr({
    this.childSkuCode,
    this.rgbColor,
  });

  factory SwatchesAr.fromJson(Map<String, dynamic> json) => SwatchesAr(
        childSkuCode: json["child_sku_code"],
        rgbColor: json["rgb_color"],
      );

  Map<String, dynamic> toJson() => {
        "child_sku_code": childSkuCode,
        "rgb_color": rgbColor,
      };
}

class ProcessingTimingsMs {
  Request? request;
  AfterFetch? afterFetch;
  Fetch? fetch;
  GetIdx? getIdx;
  int? personalization;
  int? rules;
  int? total;

  ProcessingTimingsMs({
    this.request,
    this.afterFetch,
    this.fetch,
    this.getIdx,
    this.personalization,
    this.rules,
    this.total,
  });

  factory ProcessingTimingsMs.fromJson(Map<String, dynamic> json) =>
      ProcessingTimingsMs(
        request: json["_request"] == null
            ? null
            : Request.fromJson(json["_request"]),
        afterFetch: json["afterFetch"] == null
            ? null
            : AfterFetch.fromJson(json["afterFetch"]),
        fetch: json["fetch"] == null ? null : Fetch.fromJson(json["fetch"]),
        getIdx: json["getIdx"] == null ? null : GetIdx.fromJson(json["getIdx"]),
        personalization: json["personalization"],
        rules: json["rules"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "_request": request?.toJson(),
        "afterFetch": afterFetch?.toJson(),
        "fetch": fetch?.toJson(),
        "getIdx": getIdx?.toJson(),
        "personalization": personalization,
        "rules": rules,
        "total": total,
      };
}

class AfterFetch {
  Fetch? format;

  AfterFetch({
    this.format,
  });

  factory AfterFetch.fromJson(Map<String, dynamic> json) => AfterFetch(
        format: json["format"] == null ? null : Fetch.fromJson(json["format"]),
      );

  Map<String, dynamic> toJson() => {
        "format": format?.toJson(),
      };
}

class Fetch {
  int? total;

  Fetch({
    this.total,
  });

  factory Fetch.fromJson(Map<String, dynamic> json) => Fetch(
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
      };
}

class GetIdx {
  Load? load;
  int? total;
  int? unload;

  GetIdx({
    this.load,
    this.total,
    this.unload,
  });

  factory GetIdx.fromJson(Map<String, dynamic> json) => GetIdx(
        load: json["load"] == null ? null : Load.fromJson(json["load"]),
        total: json["total"],
        unload: json["unload"],
      );

  Map<String, dynamic> toJson() => {
        "load": load?.toJson(),
        "total": total,
        "unload": unload,
      };
}

class Load {
  int? settings;
  int? total;

  Load({
    this.settings,
    this.total,
  });

  factory Load.fromJson(Map<String, dynamic> json) => Load(
        settings: json["settings"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "settings": settings,
        "total": total,
      };
}

class Request {
  int? roundTrip;

  Request({
    this.roundTrip,
  });

  factory Request.fromJson(Map<String, dynamic> json) => Request(
        roundTrip: json["roundTrip"],
      );

  Map<String, dynamic> toJson() => {
        "roundTrip": roundTrip,
      };
}

class RenderingContent {
  FacetOrdering? facetOrdering;

  RenderingContent({
    this.facetOrdering,
  });

  factory RenderingContent.fromJson(Map<String, dynamic> json) =>
      RenderingContent(
        facetOrdering: json["facetOrdering"] == null
            ? null
            : FacetOrdering.fromJson(json["facetOrdering"]),
      );

  Map<String, dynamic> toJson() => {
        "facetOrdering": facetOrdering?.toJson(),
      };
}

class FacetOrdering {
  FacetOrderingFacets? facets;
  Values? values;

  FacetOrdering({
    this.facets,
    this.values,
  });

  factory FacetOrdering.fromJson(Map<String, dynamic> json) => FacetOrdering(
        facets: json["facets"] == null
            ? null
            : FacetOrderingFacets.fromJson(json["facets"]),
        values: json["values"] == null ? null : Values.fromJson(json["values"]),
      );

  Map<String, dynamic> toJson() => {
        "facets": facets?.toJson(),
        "values": values?.toJson(),
      };
}

class FacetOrderingFacets {
  List<String>? order;

  FacetOrderingFacets({
    this.order,
  });

  factory FacetOrderingFacets.fromJson(Map<String, dynamic> json) =>
      FacetOrderingFacets(
        order: json["order"] == null
            ? []
            : List<String>.from(json["order"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "order": order == null ? [] : List<dynamic>.from(order!.map((x) => x)),
      };
}

class Values {
  AttrAccessoriesStyleAr? attrAccessoriesStyleAr;
  AttrAccessoriesStyleAr? attrAccessoriesStyleEn;
  AttrAccessoriesStyleAr? attrArticleLicenseCompanyAr;
  AttrAccessoriesStyleAr? attrArticleLicenseCompanyEn;
  AttrAccessoriesStyleAr? attrArticleLicenseItemAr;
  AttrAccessoriesStyleAr? attrArticleLicenseItemEn;
  AttrAccessoriesStyleAr? attrArticlePatternAr;
  AttrAccessoriesStyleAr? attrArticlePatternEn;
  AttrAccessoriesStyleAr? attrBvRatingAr;
  AttrAccessoriesStyleAr? attrBvRatingEn;
  AttrAccessoriesStyleAr? attrClothingStyleAr;
  AttrAccessoriesStyleAr? attrClothingStyleEn;
  AttrAccessoriesStyleAr? attrCollarStyleAr;
  AttrAccessoriesStyleAr? attrCollarStyleEn;
  AttrAccessoriesStyleAr? attrColorFamilyAr;
  AttrAccessoriesStyleAr? attrColorFamilyEn;
  AttrAccessoriesStyleAr? attrConceptAr;
  AttrAccessoriesStyleAr? attrConceptEn;
  AttrAccessoriesStyleAr? attrContextAr;
  AttrAccessoriesStyleAr? attrContextEn;
  AttrAccessoriesStyleAr? attrDescriptiveLengthAr;
  AttrAccessoriesStyleAr? attrDescriptiveLengthEn;
  AttrAccessoriesStyleAr? attrFitAr;
  AttrAccessoriesStyleAr? attrFitEn;
  AttrAccessoriesStyleAr? attrFootwearStyleAr;
  AttrAccessoriesStyleAr? attrFootwearStyleEn;
  AttrAccessoriesStyleAr? attrFunctionAr;
  AttrAccessoriesStyleAr? attrFunctionEn;
  AttrAccessoriesStyleAr? attrPresentationProductTypeAr;
  AttrAccessoriesStyleAr? attrPresentationProductTypeEn;
  AttrAccessoriesStyleAr? attrProductCollectionAr;
  AttrAccessoriesStyleAr? attrProductCollectionEn;
  AttrAccessoriesStyleAr? attrSizeAr;
  AttrSizeEn? attrSizeEn;
  AttrAccessoriesStyleAr? attrSleeveLengthAr;
  AttrAccessoriesStyleAr? attrSleeveLengthEn;
  AttrAccessoriesStyleAr? fieldAcqPromotionLabelArWeb;
  AttrAccessoriesStyleAr? fieldAcqPromotionLabelEnWeb;
  AttrAccessoriesStyleAr? finalPriceAr;
  AttrAccessoriesStyleAr? finalPriceEn;

  Values({
    this.attrAccessoriesStyleAr,
    this.attrAccessoriesStyleEn,
    this.attrArticleLicenseCompanyAr,
    this.attrArticleLicenseCompanyEn,
    this.attrArticleLicenseItemAr,
    this.attrArticleLicenseItemEn,
    this.attrArticlePatternAr,
    this.attrArticlePatternEn,
    this.attrBvRatingAr,
    this.attrBvRatingEn,
    this.attrClothingStyleAr,
    this.attrClothingStyleEn,
    this.attrCollarStyleAr,
    this.attrCollarStyleEn,
    this.attrColorFamilyAr,
    this.attrColorFamilyEn,
    this.attrConceptAr,
    this.attrConceptEn,
    this.attrContextAr,
    this.attrContextEn,
    this.attrDescriptiveLengthAr,
    this.attrDescriptiveLengthEn,
    this.attrFitAr,
    this.attrFitEn,
    this.attrFootwearStyleAr,
    this.attrFootwearStyleEn,
    this.attrFunctionAr,
    this.attrFunctionEn,
    this.attrPresentationProductTypeAr,
    this.attrPresentationProductTypeEn,
    this.attrProductCollectionAr,
    this.attrProductCollectionEn,
    this.attrSizeAr,
    this.attrSizeEn,
    this.attrSleeveLengthAr,
    this.attrSleeveLengthEn,
    this.fieldAcqPromotionLabelArWeb,
    this.fieldAcqPromotionLabelEnWeb,
    this.finalPriceAr,
    this.finalPriceEn,
  });

  factory Values.fromJson(Map<String, dynamic> json) => Values(
        attrAccessoriesStyleAr: json["attr_accessories_style.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(
                json["attr_accessories_style.ar"]),
        attrAccessoriesStyleEn: json["attr_accessories_style.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(
                json["attr_accessories_style.en"]),
        attrArticleLicenseCompanyAr:
            json["attr_article_license_company.ar"] == null
                ? null
                : AttrAccessoriesStyleAr.fromJson(
                    json["attr_article_license_company.ar"]),
        attrArticleLicenseCompanyEn:
            json["attr_article_license_company.en"] == null
                ? null
                : AttrAccessoriesStyleAr.fromJson(
                    json["attr_article_license_company.en"]),
        attrArticleLicenseItemAr: json["attr_article_license_item.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(
                json["attr_article_license_item.ar"]),
        attrArticleLicenseItemEn: json["attr_article_license_item.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(
                json["attr_article_license_item.en"]),
        attrArticlePatternAr: json["attr_article_pattern.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_article_pattern.ar"]),
        attrArticlePatternEn: json["attr_article_pattern.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_article_pattern.en"]),
        attrBvRatingAr: json["attr_bv_rating.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_bv_rating.ar"]),
        attrBvRatingEn: json["attr_bv_rating.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_bv_rating.en"]),
        attrClothingStyleAr: json["attr_clothing_style.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_clothing_style.ar"]),
        attrClothingStyleEn: json["attr_clothing_style.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_clothing_style.en"]),
        attrCollarStyleAr: json["attr_collar_style.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_collar_style.ar"]),
        attrCollarStyleEn: json["attr_collar_style.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_collar_style.en"]),
        attrColorFamilyAr: json["attr_color_family.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_color_family.ar"]),
        attrColorFamilyEn: json["attr_color_family.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_color_family.en"]),
        attrConceptAr: json["attr_concept.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_concept.ar"]),
        attrConceptEn: json["attr_concept.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_concept.en"]),
        attrContextAr: json["attr_context.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_context.ar"]),
        attrContextEn: json["attr_context.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_context.en"]),
        attrDescriptiveLengthAr: json["attr_descriptive_length.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(
                json["attr_descriptive_length.ar"]),
        attrDescriptiveLengthEn: json["attr_descriptive_length.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(
                json["attr_descriptive_length.en"]),
        attrFitAr: json["attr_fit.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_fit.ar"]),
        attrFitEn: json["attr_fit.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_fit.en"]),
        attrFootwearStyleAr: json["attr_footwear_style.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_footwear_style.ar"]),
        attrFootwearStyleEn: json["attr_footwear_style.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_footwear_style.en"]),
        attrFunctionAr: json["attr_function.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_function.ar"]),
        attrFunctionEn: json["attr_function.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_function.en"]),
        attrPresentationProductTypeAr:
            json["attr_presentation_product_type.ar"] == null
                ? null
                : AttrAccessoriesStyleAr.fromJson(
                    json["attr_presentation_product_type.ar"]),
        attrPresentationProductTypeEn:
            json["attr_presentation_product_type.en"] == null
                ? null
                : AttrAccessoriesStyleAr.fromJson(
                    json["attr_presentation_product_type.en"]),
        attrProductCollectionAr: json["attr_product_collection.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(
                json["attr_product_collection.ar"]),
        attrProductCollectionEn: json["attr_product_collection.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(
                json["attr_product_collection.en"]),
        attrSizeAr: json["attr_size.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_size.ar"]),
        attrSizeEn: json["attr_size.en"] == null
            ? null
            : AttrSizeEn.fromJson(json["attr_size.en"]),
        attrSleeveLengthAr: json["attr_sleeve_length.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_sleeve_length.ar"]),
        attrSleeveLengthEn: json["attr_sleeve_length.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["attr_sleeve_length.en"]),
        fieldAcqPromotionLabelArWeb:
            json["field_acq_promotion_label.ar.web"] == null
                ? null
                : AttrAccessoriesStyleAr.fromJson(
                    json["field_acq_promotion_label.ar.web"]),
        fieldAcqPromotionLabelEnWeb:
            json["field_acq_promotion_label.en.web"] == null
                ? null
                : AttrAccessoriesStyleAr.fromJson(
                    json["field_acq_promotion_label.en.web"]),
        finalPriceAr: json["final_price.ar"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["final_price.ar"]),
        finalPriceEn: json["final_price.en"] == null
            ? null
            : AttrAccessoriesStyleAr.fromJson(json["final_price.en"]),
      );

  Map<String, dynamic> toJson() => {
        "attr_accessories_style.ar": attrAccessoriesStyleAr?.toJson(),
        "attr_accessories_style.en": attrAccessoriesStyleEn?.toJson(),
        "attr_article_license_company.ar":
            attrArticleLicenseCompanyAr?.toJson(),
        "attr_article_license_company.en":
            attrArticleLicenseCompanyEn?.toJson(),
        "attr_article_license_item.ar": attrArticleLicenseItemAr?.toJson(),
        "attr_article_license_item.en": attrArticleLicenseItemEn?.toJson(),
        "attr_article_pattern.ar": attrArticlePatternAr?.toJson(),
        "attr_article_pattern.en": attrArticlePatternEn?.toJson(),
        "attr_bv_rating.ar": attrBvRatingAr?.toJson(),
        "attr_bv_rating.en": attrBvRatingEn?.toJson(),
        "attr_clothing_style.ar": attrClothingStyleAr?.toJson(),
        "attr_clothing_style.en": attrClothingStyleEn?.toJson(),
        "attr_collar_style.ar": attrCollarStyleAr?.toJson(),
        "attr_collar_style.en": attrCollarStyleEn?.toJson(),
        "attr_color_family.ar": attrColorFamilyAr?.toJson(),
        "attr_color_family.en": attrColorFamilyEn?.toJson(),
        "attr_concept.ar": attrConceptAr?.toJson(),
        "attr_concept.en": attrConceptEn?.toJson(),
        "attr_context.ar": attrContextAr?.toJson(),
        "attr_context.en": attrContextEn?.toJson(),
        "attr_descriptive_length.ar": attrDescriptiveLengthAr?.toJson(),
        "attr_descriptive_length.en": attrDescriptiveLengthEn?.toJson(),
        "attr_fit.ar": attrFitAr?.toJson(),
        "attr_fit.en": attrFitEn?.toJson(),
        "attr_footwear_style.ar": attrFootwearStyleAr?.toJson(),
        "attr_footwear_style.en": attrFootwearStyleEn?.toJson(),
        "attr_function.ar": attrFunctionAr?.toJson(),
        "attr_function.en": attrFunctionEn?.toJson(),
        "attr_presentation_product_type.ar":
            attrPresentationProductTypeAr?.toJson(),
        "attr_presentation_product_type.en":
            attrPresentationProductTypeEn?.toJson(),
        "attr_product_collection.ar": attrProductCollectionAr?.toJson(),
        "attr_product_collection.en": attrProductCollectionEn?.toJson(),
        "attr_size.ar": attrSizeAr?.toJson(),
        "attr_size.en": attrSizeEn?.toJson(),
        "attr_sleeve_length.ar": attrSleeveLengthAr?.toJson(),
        "attr_sleeve_length.en": attrSleeveLengthEn?.toJson(),
        "field_acq_promotion_label.ar.web":
            fieldAcqPromotionLabelArWeb?.toJson(),
        "field_acq_promotion_label.en.web":
            fieldAcqPromotionLabelEnWeb?.toJson(),
        "final_price.ar": finalPriceAr?.toJson(),
        "final_price.en": finalPriceEn?.toJson(),
      };
}

class AttrAccessoriesStyleAr {
  String? sortRemainingBy;

  AttrAccessoriesStyleAr({
    this.sortRemainingBy,
  });

  factory AttrAccessoriesStyleAr.fromJson(Map<String, dynamic> json) =>
      AttrAccessoriesStyleAr(
        sortRemainingBy: json["sortRemainingBy"],
      );

  Map<String, dynamic> toJson() => {
        "sortRemainingBy": sortRemainingBy,
      };
}

class AttrSizeEn {
  List<String>? order;
  String? sortRemainingBy;

  AttrSizeEn({
    this.order,
    this.sortRemainingBy,
  });

  factory AttrSizeEn.fromJson(Map<String, dynamic> json) => AttrSizeEn(
        order: json["order"] == null
            ? []
            : List<String>.from(json["order"]!.map((x) => x)),
        sortRemainingBy: json["sortRemainingBy"],
      );

  Map<String, dynamic> toJson() => {
        "order": order == null ? [] : List<dynamic>.from(order!.map((x) => x)),
        "sortRemainingBy": sortRemainingBy,
      };
}

class UserDatum {
  String? context;
  FacetsConfig? facetsConfig;
  AttrProductBrand? sortingLabel;
  List<String>? sortingOptions;
  SortingOptionsConfig? sortingOptionsConfig;

  UserDatum({
    this.context,
    this.facetsConfig,
    this.sortingLabel,
    this.sortingOptions,
    this.sortingOptionsConfig,
  });

  factory UserDatum.fromJson(Map<String, dynamic> json) => UserDatum(
        context: json["context"],
        facetsConfig: json["facets_config"] == null
            ? null
            : FacetsConfig.fromJson(json["facets_config"]),
        sortingLabel: json["sorting_label"] == null
            ? null
            : AttrProductBrand.fromJson(json["sorting_label"]),
        sortingOptions: json["sorting_options"] == null
            ? []
            : List<String>.from(json["sorting_options"]!.map((x) => x)),
        sortingOptionsConfig: json["sorting_options_config"] == null
            ? null
            : SortingOptionsConfig.fromJson(json["sorting_options_config"]),
      );

  Map<String, dynamic> toJson() => {
        "context": context,
        "facets_config": facetsConfig?.toJson(),
        "sorting_label": sortingLabel?.toJson(),
        "sorting_options": sortingOptions == null
            ? []
            : List<dynamic>.from(sortingOptions!.map((x) => x)),
        "sorting_options_config": sortingOptionsConfig?.toJson(),
      };
}

class FacetsConfig {
  FinalPrice? finalPrice;
  AttrAccessoriesStyle? attrSize;
  AttrAccessoriesStyle? attrAccessoriesStyle;
  AttrAccessoriesStyle? attrAgeGroup;
  AttrAccessoriesStyle? attrArticleLicenseCompany;
  AttrAccessoriesStyle? attrArticleLicenseItem;
  AttrAccessoriesStyle? attrArticlePattern;
  AttrAccessoriesStyle? attrArticleVisualDescription;
  AttrAccessoriesStyle? attrBvRating;
  AttrAccessoriesStyle? attrClothingStyle;
  AttrAccessoriesStyle? attrCollarStyle;
  AttrAccessoriesStyle? attrColorFamily;
  AttrAccessoriesStyle? attrColorLabel;
  AttrAccessoriesStyle? attrColor;
  AttrAccessoriesStyle? attrConcept;
  AttrAccessoriesStyle? attrContext;
  AttrAccessoriesStyle? attrCoverage;
  AttrAccessoriesStyle? attrDescriptiveLength;
  AttrAccessoriesStyle? attrFinish;
  AttrAccessoriesStyle? attrFit;
  AttrAccessoriesStyle? attrFootwearStyle;
  AttrAccessoriesStyle? attrFunction;
  AttrAccessoriesStyle? attrGarment;
  AttrAccessoriesStyle? attrGarmentLength;
  AttrAccessoriesStyle? attrHeelHeight;
  AttrAccessoriesStyle? attrNecklineStyle;
  AttrAccessoriesStyle? attrOccasion;
  AttrAccessoriesStyle? attrPresentationProductType;
  AttrAccessoriesStyle? attrProductQuality;
  AttrAccessoriesStyle? attrSkinType;
  AttrAccessoriesStyle? attrSpf;
  AttrAccessoriesStyle? attrSleeveLength;
  AttrAccessoriesStyle? attrWaistRise;
  AttrAccessoriesStyle? attrDeliveryWays;
  AttrAccessoriesStyle? fieldAcqPromotionLabel;
  AttrAccessoriesStyle? attrProductBrand;
  AttrAccessoriesStyle? attrProductCollection;
  AttrAccessoriesStyle? fieldCategory;

  FacetsConfig({
    this.finalPrice,
    this.attrSize,
    this.attrAccessoriesStyle,
    this.attrAgeGroup,
    this.attrArticleLicenseCompany,
    this.attrArticleLicenseItem,
    this.attrArticlePattern,
    this.attrArticleVisualDescription,
    this.attrBvRating,
    this.attrClothingStyle,
    this.attrCollarStyle,
    this.attrColorFamily,
    this.attrColorLabel,
    this.attrColor,
    this.attrConcept,
    this.attrContext,
    this.attrCoverage,
    this.attrDescriptiveLength,
    this.attrFinish,
    this.attrFit,
    this.attrFootwearStyle,
    this.attrFunction,
    this.attrGarment,
    this.attrGarmentLength,
    this.attrHeelHeight,
    this.attrNecklineStyle,
    this.attrOccasion,
    this.attrPresentationProductType,
    this.attrProductQuality,
    this.attrSkinType,
    this.attrSpf,
    this.attrSleeveLength,
    this.attrWaistRise,
    this.attrDeliveryWays,
    this.fieldAcqPromotionLabel,
    this.attrProductBrand,
    this.attrProductCollection,
    this.fieldCategory,
  });

  factory FacetsConfig.fromJson(Map<String, dynamic> json) => FacetsConfig(
        finalPrice: json["final_price"] == null
            ? null
            : FinalPrice.fromJson(json["final_price"]),
        attrSize: json["attr_size"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_size"]),
        attrAccessoriesStyle: json["attr_accessories_style"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_accessories_style"]),
        attrAgeGroup: json["attr_age_group"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_age_group"]),
        attrArticleLicenseCompany: json["attr_article_license_company"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(
                json["attr_article_license_company"]),
        attrArticleLicenseItem: json["attr_article_license_item"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_article_license_item"]),
        attrArticlePattern: json["attr_article_pattern"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_article_pattern"]),
        attrArticleVisualDescription:
            json["attr_article_visual_description"] == null
                ? null
                : AttrAccessoriesStyle.fromJson(
                    json["attr_article_visual_description"]),
        attrBvRating: json["attr_bv_rating"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_bv_rating"]),
        attrClothingStyle: json["attr_clothing_style"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_clothing_style"]),
        attrCollarStyle: json["attr_collar_style"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_collar_style"]),
        attrColorFamily: json["attr_color_family"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_color_family"]),
        attrColorLabel: json["attr_color_label"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_color_label"]),
        attrColor: json["attr_color"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_color"]),
        attrConcept: json["attr_concept"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_concept"]),
        attrContext: json["attr_context"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_context"]),
        attrCoverage: json["attr_coverage"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_coverage"]),
        attrDescriptiveLength: json["attr_descriptive_length"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_descriptive_length"]),
        attrFinish: json["attr_finish"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_finish"]),
        attrFit: json["attr_fit"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_fit"]),
        attrFootwearStyle: json["attr_footwear_style"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_footwear_style"]),
        attrFunction: json["attr_function"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_function"]),
        attrGarment: json["attr_garment"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_garment"]),
        attrGarmentLength: json["attr_garment_length"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_garment_length"]),
        attrHeelHeight: json["attr_heel_height"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_heel_height"]),
        attrNecklineStyle: json["attr_neckline_style"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_neckline_style"]),
        attrOccasion: json["attr_occasion"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_occasion"]),
        attrPresentationProductType:
            json["attr_presentation_product_type"] == null
                ? null
                : AttrAccessoriesStyle.fromJson(
                    json["attr_presentation_product_type"]),
        attrProductQuality: json["attr_product_quality"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_product_quality"]),
        attrSkinType: json["attr_skin_type"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_skin_type"]),
        attrSpf: json["attr_spf"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_spf"]),
        attrSleeveLength: json["attr_sleeve_length"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_sleeve_length"]),
        attrWaistRise: json["attr_waist_rise"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_waist_rise"]),
        attrDeliveryWays: json["attr_delivery_ways"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_delivery_ways"]),
        fieldAcqPromotionLabel: json["field_acq_promotion_label"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["field_acq_promotion_label"]),
        attrProductBrand: json["attr_product_brand"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_product_brand"]),
        attrProductCollection: json["attr_product_collection"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["attr_product_collection"]),
        fieldCategory: json["field_category"] == null
            ? null
            : AttrAccessoriesStyle.fromJson(json["field_category"]),
      );

  Map<String, dynamic> toJson() => {
        "final_price": finalPrice?.toJson(),
        "attr_size": attrSize?.toJson(),
        "attr_accessories_style": attrAccessoriesStyle?.toJson(),
        "attr_age_group": attrAgeGroup?.toJson(),
        "attr_article_license_company": attrArticleLicenseCompany?.toJson(),
        "attr_article_license_item": attrArticleLicenseItem?.toJson(),
        "attr_article_pattern": attrArticlePattern?.toJson(),
        "attr_article_visual_description":
            attrArticleVisualDescription?.toJson(),
        "attr_bv_rating": attrBvRating?.toJson(),
        "attr_clothing_style": attrClothingStyle?.toJson(),
        "attr_collar_style": attrCollarStyle?.toJson(),
        "attr_color_family": attrColorFamily?.toJson(),
        "attr_color_label": attrColorLabel?.toJson(),
        "attr_color": attrColor?.toJson(),
        "attr_concept": attrConcept?.toJson(),
        "attr_context": attrContext?.toJson(),
        "attr_coverage": attrCoverage?.toJson(),
        "attr_descriptive_length": attrDescriptiveLength?.toJson(),
        "attr_finish": attrFinish?.toJson(),
        "attr_fit": attrFit?.toJson(),
        "attr_footwear_style": attrFootwearStyle?.toJson(),
        "attr_function": attrFunction?.toJson(),
        "attr_garment": attrGarment?.toJson(),
        "attr_garment_length": attrGarmentLength?.toJson(),
        "attr_heel_height": attrHeelHeight?.toJson(),
        "attr_neckline_style": attrNecklineStyle?.toJson(),
        "attr_occasion": attrOccasion?.toJson(),
        "attr_presentation_product_type": attrPresentationProductType?.toJson(),
        "attr_product_quality": attrProductQuality?.toJson(),
        "attr_skin_type": attrSkinType?.toJson(),
        "attr_spf": attrSpf?.toJson(),
        "attr_sleeve_length": attrSleeveLength?.toJson(),
        "attr_waist_rise": attrWaistRise?.toJson(),
        "attr_delivery_ways": attrDeliveryWays?.toJson(),
        "field_acq_promotion_label": fieldAcqPromotionLabel?.toJson(),
        "attr_product_brand": attrProductBrand?.toJson(),
        "attr_product_collection": attrProductCollection?.toJson(),
        "field_category": fieldCategory?.toJson(),
      };
}

class AttrAccessoriesStyle {
  AttrProductBrand? label;
  AttrAccessoriesStyleWidget? widget;
  String? slug;
  FacetValues? facetValues;
  AttrProductBrand? identifier;
  bool? lhn;

  AttrAccessoriesStyle({
    this.label,
    this.widget,
    this.slug,
    this.facetValues,
    this.identifier,
    this.lhn,
  });

  factory AttrAccessoriesStyle.fromJson(Map<String, dynamic> json) =>
      AttrAccessoriesStyle(
        label: json["label"] == null
            ? null
            : AttrProductBrand.fromJson(json["label"]),
        widget: json["widget"] == null
            ? null
            : AttrAccessoriesStyleWidget.fromJson(json["widget"]),
        slug: json["slug"],
        facetValues: json["facet_values"] == null
            ? null
            : FacetValues.fromJson(json["facet_values"]),
        identifier: json["identifier"] == null
            ? null
            : AttrProductBrand.fromJson(json["identifier"]),
        lhn: json["lhn"],
      );

  Map<String, dynamic> toJson() => {
        "label": label?.toJson(),
        "widget": widget?.toJson(),
        "slug": slug,
        "facet_values": facetValues?.toJson(),
        "identifier": identifier?.toJson(),
        "lhn": lhn,
      };
}

class FacetValues {
  FacetValuesAr? en;
  FacetValuesAr? ar;

  FacetValues({
    this.en,
    this.ar,
  });

  factory FacetValues.fromJson(Map<String, dynamic> json) => FacetValues(
        en: json["en"] == null ? null : FacetValuesAr.fromJson(json["en"]),
        ar: json["ar"] == null ? null : FacetValuesAr.fromJson(json["ar"]),
      );

  Map<String, dynamic> toJson() => {
        "en": en?.toJson(),
        "ar": ar?.toJson(),
      };
}

class FacetValuesAr {
  String? sameDayDeliveryAvailable;
  String? expressDayDeliveryAvailable;

  FacetValuesAr({
    this.sameDayDeliveryAvailable,
    this.expressDayDeliveryAvailable,
  });

  factory FacetValuesAr.fromJson(Map<String, dynamic> json) => FacetValuesAr(
        sameDayDeliveryAvailable: json["same_day_delivery_available"],
        expressDayDeliveryAvailable: json["express_day_delivery_available"],
      );

  Map<String, dynamic> toJson() => {
        "same_day_delivery_available": sameDayDeliveryAvailable,
        "express_day_delivery_available": expressDayDeliveryAvailable,
      };
}

class AttrAccessoriesStyleWidget {
  String? type;

  AttrAccessoriesStyleWidget({
    this.type,
  });

  factory AttrAccessoriesStyleWidget.fromJson(Map<String, dynamic> json) =>
      AttrAccessoriesStyleWidget(
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
      };
}

class FinalPrice {
  AttrProductBrand? label;
  FinalPriceWidget? widget;
  String? slug;

  FinalPrice({
    this.label,
    this.widget,
    this.slug,
  });

  factory FinalPrice.fromJson(Map<String, dynamic> json) => FinalPrice(
        label: json["label"] == null
            ? null
            : AttrProductBrand.fromJson(json["label"]),
        widget: json["widget"] == null
            ? null
            : FinalPriceWidget.fromJson(json["widget"]),
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "label": label?.toJson(),
        "widget": widget?.toJson(),
        "slug": slug,
      };
}

class FinalPriceWidget {
  String? type;
  Config? config;

  FinalPriceWidget({
    this.type,
    this.config,
  });

  factory FinalPriceWidget.fromJson(Map<String, dynamic> json) =>
      FinalPriceWidget(
        type: json["type"],
        config: json["config"] == null ? null : Config.fromJson(json["config"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "config": config?.toJson(),
      };
}

class Config {
  int? granularity;

  Config({
    this.granularity,
  });

  factory Config.fromJson(Map<String, dynamic> json) => Config(
        granularity: json["granularity"],
      );

  Map<String, dynamic> toJson() => {
        "granularity": granularity,
      };
}

class SortingOptionsConfig {
  CreatedDesc? sortingOptionsConfigDefault;
  CreatedDesc? titleAsc;
  CreatedDesc? titleDesc;
  CreatedDesc? finalPriceAsc;
  CreatedDesc? finalPriceDesc;
  CreatedDesc? createdDesc;

  SortingOptionsConfig({
    this.sortingOptionsConfigDefault,
    this.titleAsc,
    this.titleDesc,
    this.finalPriceAsc,
    this.finalPriceDesc,
    this.createdDesc,
  });

  factory SortingOptionsConfig.fromJson(Map<String, dynamic> json) =>
      SortingOptionsConfig(
        sortingOptionsConfigDefault: json["default"] == null
            ? null
            : CreatedDesc.fromJson(json["default"]),
        titleAsc: json["title_asc"] == null
            ? null
            : CreatedDesc.fromJson(json["title_asc"]),
        titleDesc: json["title_desc"] == null
            ? null
            : CreatedDesc.fromJson(json["title_desc"]),
        finalPriceAsc: json["final_price_asc"] == null
            ? null
            : CreatedDesc.fromJson(json["final_price_asc"]),
        finalPriceDesc: json["final_price_desc"] == null
            ? null
            : CreatedDesc.fromJson(json["final_price_desc"]),
        createdDesc: json["created_desc"] == null
            ? null
            : CreatedDesc.fromJson(json["created_desc"]),
      );

  Map<String, dynamic> toJson() => {
        "default": sortingOptionsConfigDefault?.toJson(),
        "title_asc": titleAsc?.toJson(),
        "title_desc": titleDesc?.toJson(),
        "final_price_asc": finalPriceAsc?.toJson(),
        "final_price_desc": finalPriceDesc?.toJson(),
        "created_desc": createdDesc?.toJson(),
      };
}

class CreatedDesc {
  AttrProductBrand? index;
  AttrProductBrand? label;

  CreatedDesc({
    this.index,
    this.label,
  });

  factory CreatedDesc.fromJson(Map<String, dynamic> json) => CreatedDesc(
        index: json["index"] == null
            ? null
            : AttrProductBrand.fromJson(json["index"]),
        label: json["label"] == null
            ? null
            : AttrProductBrand.fromJson(json["label"]),
      );

  Map<String, dynamic> toJson() => {
        "index": index?.toJson(),
        "label": label?.toJson(),
      };
}
