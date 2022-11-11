class GenderEntity{
  late int id;
  final String gender;

  GenderEntity({required this.gender});

  
}
enum GenderEnum{
    female(id: 1, name:'Женский'),
    male(id: 2, name:'Мужской'),
    boy(id: 3, name:'Для мальчиков'),
    girl(id: 4, name:'Для девочек'),;


    const GenderEnum({
      required this.id,
      required this.name,
    });
    final String name;
    final int id;
  }