class AgeEntity{
  late int id;
  final String age;

  AgeEntity({required this.age});

  
}
enum AgeEnum{
    adult(id:1, name:'Взрослый'),
    teenager(id:2, name:'Подростковый'),
    child(id:3, name:'Детский'),;


    const AgeEnum({
      required this.id,
      required this.name,
    });
    final String name;
    final int id;
  }