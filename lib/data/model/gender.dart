import 'package:pracriches_2/domain/entity/gender.dart';

class Gender extends GenderEntity{
  Gender({required super.gender});
  
  Map<String, dynamic> toMap(){
    return {
      'gender':gender,
    };
  }

  factory Gender.toFromMap(Map<String,dynamic> json){
    return Gender(gender: json['gender']);
  }
}