import 'package:pracriches_2/domain/entity/status.dart';

class Status extends StatusEntity{
  Status({required super.status});
  
  Map<String, dynamic> toMap(){
    return {
      'status':status,
    };
  }

  factory Status.toFromMap(Map<String,dynamic> json){
    return Status(status: json['status']);
  }
}