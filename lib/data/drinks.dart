class Drinks {
  List<Drinks1>? drinks;

  Drinks({this.drinks});

  Drinks.fromJson(Map<String, dynamic> json) {
    drinks = json["drinks"] == null
        ? null
        : (json["drinks"] as List).map((e) => Drinks1.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (drinks != null) {
      _data["drinks"] = drinks?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Drinks1 {
  String? idDrink;
  String? strDrink;
  dynamic strDrinkAlternate;
  String? strTags;
  dynamic strVideo;
  String? strCategory;
  String? strIba;
  String? strAlcoholic;
  String? strGlass;
  String? strInstructions;
  String? strInstructionsEs;
  String? strInstructionsDe;
  String? strInstructionsFr;
  String? strInstructionsIt;
  dynamic strInstructionsZhHans;
  dynamic strInstructionsZhHant;
  String? strDrinkThumb;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  dynamic strIngredient5;
  dynamic strIngredient6;
  dynamic strIngredient7;
  dynamic strIngredient8;
  dynamic strIngredient9;
  dynamic strIngredient10;
  dynamic strIngredient11;
  dynamic strIngredient12;
  dynamic strIngredient13;
  dynamic strIngredient14;
  dynamic strIngredient15;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  dynamic strMeasure4;
  dynamic strMeasure5;
  dynamic strMeasure6;
  dynamic strMeasure7;
  dynamic strMeasure8;
  dynamic strMeasure9;
  dynamic strMeasure10;
  dynamic strMeasure11;
  dynamic strMeasure12;
  dynamic strMeasure13;
  dynamic strMeasure14;
  dynamic strMeasure15;
  String? strImageSource;
  String? strImageAttribution;
  String? strCreativeCommonsConfirmed;
  String? dateModified;

  Drinks1(
      {this.idDrink,
      this.strDrink,
      this.strDrinkAlternate,
      this.strTags,
      this.strVideo,
      this.strCategory,
      this.strIba,
      this.strAlcoholic,
      this.strGlass,
      this.strInstructions,
      this.strInstructionsEs,
      this.strInstructionsDe,
      this.strInstructionsFr,
      this.strInstructionsIt,
      this.strInstructionsZhHans,
      this.strInstructionsZhHant,
      this.strDrinkThumb,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strImageSource,
      this.strImageAttribution,
      this.strCreativeCommonsConfirmed,
      this.dateModified});

  Drinks1.fromJson(Map<String, dynamic> json) {
    idDrink = json["idDrink"];
    strDrink = json["strDrink"];
    strDrinkAlternate = json["strDrinkAlternate"];
    strTags = json["strTags"];
    strVideo = json["strVideo"];
    strCategory = json["strCategory"];
    strIba = json["strIBA"];
    strAlcoholic = json["strAlcoholic"];
    strGlass = json["strGlass"];
    strInstructions = json["strInstructions"];
    strInstructionsEs = json["strInstructionsES"];
    strInstructionsDe = json["strInstructionsDE"];
    strInstructionsFr = json["strInstructionsFR"];
    strInstructionsIt = json["strInstructionsIT"];
    strInstructionsZhHans = json["strInstructionsZH-HANS"];
    strInstructionsZhHant = json["strInstructionsZH-HANT"];
    strDrinkThumb = json["strDrinkThumb"];
    strIngredient1 = json["strIngredient1"];
    strIngredient2 = json["strIngredient2"];
    strIngredient3 = json["strIngredient3"];
    strIngredient4 = json["strIngredient4"];
    strIngredient5 = json["strIngredient5"];
    strIngredient6 = json["strIngredient6"];
    strIngredient7 = json["strIngredient7"];
    strIngredient8 = json["strIngredient8"];
    strIngredient9 = json["strIngredient9"];
    strIngredient10 = json["strIngredient10"];
    strIngredient11 = json["strIngredient11"];
    strIngredient12 = json["strIngredient12"];
    strIngredient13 = json["strIngredient13"];
    strIngredient14 = json["strIngredient14"];
    strIngredient15 = json["strIngredient15"];
    strMeasure1 = json["strMeasure1"];
    strMeasure2 = json["strMeasure2"];
    strMeasure3 = json["strMeasure3"];
    strMeasure4 = json["strMeasure4"];
    strMeasure5 = json["strMeasure5"];
    strMeasure6 = json["strMeasure6"];
    strMeasure7 = json["strMeasure7"];
    strMeasure8 = json["strMeasure8"];
    strMeasure9 = json["strMeasure9"];
    strMeasure10 = json["strMeasure10"];
    strMeasure11 = json["strMeasure11"];
    strMeasure12 = json["strMeasure12"];
    strMeasure13 = json["strMeasure13"];
    strMeasure14 = json["strMeasure14"];
    strMeasure15 = json["strMeasure15"];
    strImageSource = json["strImageSource"];
    strImageAttribution = json["strImageAttribution"];
    strCreativeCommonsConfirmed = json["strCreativeCommonsConfirmed"];
    dateModified = json["dateModified"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["idDrink"] = idDrink;
    _data["strDrink"] = strDrink;
    _data["strDrinkAlternate"] = strDrinkAlternate;
    _data["strTags"] = strTags;
    _data["strVideo"] = strVideo;
    _data["strCategory"] = strCategory;
    _data["strIBA"] = strIba;
    _data["strAlcoholic"] = strAlcoholic;
    _data["strGlass"] = strGlass;
    _data["strInstructions"] = strInstructions;
    _data["strInstructionsES"] = strInstructionsEs;
    _data["strInstructionsDE"] = strInstructionsDe;
    _data["strInstructionsFR"] = strInstructionsFr;
    _data["strInstructionsIT"] = strInstructionsIt;
    _data["strInstructionsZH-HANS"] = strInstructionsZhHans;
    _data["strInstructionsZH-HANT"] = strInstructionsZhHant;
    _data["strDrinkThumb"] = strDrinkThumb;
    _data["strIngredient1"] = strIngredient1;
    _data["strIngredient2"] = strIngredient2;
    _data["strIngredient3"] = strIngredient3;
    _data["strIngredient4"] = strIngredient4;
    _data["strIngredient5"] = strIngredient5;
    _data["strIngredient6"] = strIngredient6;
    _data["strIngredient7"] = strIngredient7;
    _data["strIngredient8"] = strIngredient8;
    _data["strIngredient9"] = strIngredient9;
    _data["strIngredient10"] = strIngredient10;
    _data["strIngredient11"] = strIngredient11;
    _data["strIngredient12"] = strIngredient12;
    _data["strIngredient13"] = strIngredient13;
    _data["strIngredient14"] = strIngredient14;
    _data["strIngredient15"] = strIngredient15;
    _data["strMeasure1"] = strMeasure1;
    _data["strMeasure2"] = strMeasure2;
    _data["strMeasure3"] = strMeasure3;
    _data["strMeasure4"] = strMeasure4;
    _data["strMeasure5"] = strMeasure5;
    _data["strMeasure6"] = strMeasure6;
    _data["strMeasure7"] = strMeasure7;
    _data["strMeasure8"] = strMeasure8;
    _data["strMeasure9"] = strMeasure9;
    _data["strMeasure10"] = strMeasure10;
    _data["strMeasure11"] = strMeasure11;
    _data["strMeasure12"] = strMeasure12;
    _data["strMeasure13"] = strMeasure13;
    _data["strMeasure14"] = strMeasure14;
    _data["strMeasure15"] = strMeasure15;
    _data["strImageSource"] = strImageSource;
    _data["strImageAttribution"] = strImageAttribution;
    _data["strCreativeCommonsConfirmed"] = strCreativeCommonsConfirmed;
    _data["dateModified"] = dateModified;
    return _data;
  }
}
