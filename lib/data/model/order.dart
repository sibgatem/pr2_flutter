import 'package:pracriches_2/domain/entity/order.dart';
import 'package:pracriches_2/domain/entity/age.dart';
import 'package:pracriches_2/domain/entity/gender.dart';
import 'package:pracriches_2/domain/entity/type.dart';

class Order extends OrderEntity{

  Order({super.id=0,required super.date,required super.idStatus, required super.idUser});


  Map<String, dynamic> toMap(){
    return{
      'date': date,
      'id_status': idStatus,
      'id_user': idUser,
    };
  }
  factory Order.toFromMap(Map<String, dynamic> json){
    return Order(id: json['id'] as int, 
    date: json['date'],
    idStatus: json['id_status'] as int,
    idUser: json['id_user'] as int,
    );
  }
}