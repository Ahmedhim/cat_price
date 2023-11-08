class MostSearchedModel{
bool? success;
List<Item>?items=[];
MostSearchedModel.fromJson(Map<String,dynamic>json){
  success=json["success"];
  json["items"].forEach((e){
    items!.add(Item.fromJson(e));
  });
}
}
class Item{
  String? id;
  String? userid;
  String? name;
  dynamic price;
  Imageitem? imageitem;
  String? manufacturer;
  String? details;
  String? isHyprid;
  bool? isfavorite;
  int? searchCount;
  int? quantity;
  Item.fromJson(Map<String,dynamic>json){
    id=json["_id"];
    userid=json["userId"];
    name=json["name"];
    price=json["price"];
    imageitem=Imageitem.fromJson(json["image"]);
    manufacturer=json["manufacturer"];
    details=json["details"];
    isHyprid=json["isHyprid"];
    isfavorite=json["isfavorite"];
    searchCount=json["searchCount"];
    quantity=json["quantity"];
  }
}
class Imageitem{
  String? url;
  dynamic publicid;
  Imageitem.fromJson(Map<String,dynamic>json){
    url=json["url"];
    publicid=json["public_id"];
  }
}