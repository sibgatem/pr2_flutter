import 'package:pracriches_2/domain/entity/type.dart';

class Type extends TypeEntity{

  
  Type( {super.id=0, required super.type});


  Map<String, dynamic> toMap(){
    return{
      'type': type
    };
  }
  factory Type.toFromMap(Map<String, dynamic> json){
    return Type(id: json['id'] as int, 
    type: json['type'],

    );
  }
}
