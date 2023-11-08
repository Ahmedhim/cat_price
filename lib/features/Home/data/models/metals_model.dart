class MetalsModel{
  bool? success;
  Rates? rates;
  MetalsModel.fromJson(Map<String,dynamic>json){
  success=json["success"];
  rates=Rates.fromJson(json["rates"]);
}
}
class Rates{
double? USDXPD;
double? USDXPT;
double? USDXRH;
double? USDXAU;
Rates.fromJson(Map<String,dynamic>json){
  USDXPD=json["USDXPD"];
  USDXPT=json["USDXPT"];
  USDXRH=json["USDXRH"];
  USDXAU=json["USDXAU"];
}
}