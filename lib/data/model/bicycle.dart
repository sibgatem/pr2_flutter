import 'package:pracriches_2/domain/entity/bicycle.dart';
import 'package:pracriches_2/domain/entity/age.dart';
import 'package:pracriches_2/domain/entity/gender.dart';
import 'package:pracriches_2/domain/entity/type.dart';

class Bicycle extends BicycleEntity{

  Bicycle({super.id=0, required super.price, required super.idtype,required super.idGender,required super.idAge});


  Map<String, dynamic> toMap(){
    return{
      'price': price,
      'id_type': idtype,
      'id_gender': idGender,
      'id_age': idAge,
    };
  }
  factory Bicycle.toFromMap(Map<String, dynamic> json){
    return Bicycle(id: json['id'] as int, 
    price: json['diameter'],
    idtype: json['id_type'] as int,
    idGender: json['id_gender'] as int,
    idAge: json['id_age'] as int,

    );
  }
}