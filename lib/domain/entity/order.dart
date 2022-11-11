import 'package:pracriches_2/domain/entity/gender.dart';
import 'package:pracriches_2/domain/entity/age.dart';
import 'package:pracriches_2/domain/entity/type.dart';

class OrderEntity {
  late int id;
  final String date;
  final int idStatus;
  final int idUser;

  OrderEntity({this.id=0,required this.date,required this.idStatus, required this.idUser});
}