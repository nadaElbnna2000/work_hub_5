class OwnerMaterialDataModel{

  String title;
  List<InnerList> innerList;

  OwnerMaterialDataModel({required this.title,required this.innerList});
}

class InnerList{

  String title;
  int count;

  InnerList({required this.title,required this.count});
}