import 'package:pracriches_2/domain/entity/age.dart';

class Age extends AgeEntity{
  Age({required super.age});
  
  Map<String, dynamic> toMap(){
    return {
      'age':age,
    };
  }

  factory Age.toFromMap(Map<String,dynamic> json){
    return Age(age: json['age']);
  }
}