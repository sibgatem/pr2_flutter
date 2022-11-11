class StatusEntity{
  late int id;
  final String status;

  StatusEntity({required this.status});

  
}
enum StatysEnum{
    register(id:1, name:'Оформлен'),
    process(id:2, name:'В процессе сборки'),
    ready(id:3, name:'Готов к получению'),
    done(id:4, name:'Выдан'),;


    const StatysEnum({
      required this.id,
      required this.name,
    });
    final String name;
    final int id;
  }