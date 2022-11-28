class CouterModel{
  int? counter;
  CouterModel({this.counter});
  factory CouterModel.fromJson(Map<String, dynamic> json){
    return CouterModel(counter: json['couter']);
  }
  Map<String, dynamic> toJson()=>{
    'counter' : counter
  };
}