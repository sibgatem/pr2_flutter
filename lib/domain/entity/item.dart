import 'package:pracriches_2/domain/entity/gender.dart';
import 'package:pracriches_2/domain/entity/age.dart';
import 'package:pracriches_2/domain/entity/type.dart';

class ItemEntity {
  late int id;
  final int idUser;
  final int idBicycle;
  final int count;

  ItemEntity({this.id=0, required this.idUser,required this.idBicycle,required this.count});

}