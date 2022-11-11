import 'dart:developer';
import 'dart:io';

import 'package:pracriches_2/common/data_base_request.dart';
import 'package:pracriches_2/data/model/role.dart';
import 'package:pracriches_2/data/model/gender.dart';
import 'package:pracriches_2/data/model/status.dart';
import 'package:pracriches_2/data/model/age.dart';
import 'package:pracriches_2/domain/entity/gender.dart';
import 'package:pracriches_2/domain/entity/status.dart';
import 'package:pracriches_2/domain/entity/age.dart';
import 'package:pracriches_2/domain/entity/user.dart';
import 'package:pracriches_2/domain/entity/role.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import '../../data/model/user.dart';

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instance();
  factory DataBaseHelper()=> instance;

  DataBaseHelper._instance();

  final int _version = 1;
  late String _pathDB;
  late final Directory _appDocumentDirectory;
  late final Database database;

  void init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    _pathDB = join(_appDocumentDirectory.path, 'bicycles.db');
    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
sqfliteFfiInit();
var databaseFactory = databaseFactoryFfi;
database = await databaseFactory.openDatabase(_pathDB,
options: OpenDatabaseOptions(
version: _version,
onCreate: (db, version) => onCreateTable(db),
onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
));
    } else {
      database = await openDatabase(_pathDB,
          version: _version, onCreate: (db, version) {});
    }
  }
Future<void> onUpdateTable(Database db) async {
var tables = await db.rawQuery('SELECT name from sqlite_master');
for (var table in DatabaseRequest.tableList.reversed) {
  if (tables.where((element) => element['name']== table).isNotEmpty){
await db.execute(DatabaseRequest.deleteTable(table));
  }
}
onCreateTable(db);
}

 Future <void> onCreateTable(Database db) async {
    for (var tableCreate in DatabaseRequest.tableCreateList) {
      await db.execute(tableCreate);
    }
  }

  Future <void> onDropDataBase() async {
    await database.close();
    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
sqfliteFfiInit();
databaseFactoryFfi.deleteDatabase(_pathDB);

    } else {
      deleteDatabase(_pathDB);
    }
  }
  Future<void> onInitTable(Database db) async{
    try{
      for (var element in RoleEnum.values) {
        db.insert(DatabaseRequest.tableRole, Role(role: element.name).toMap());
      }
      for (var element in GenderEnum.values) {
        db.insert(DatabaseRequest.tableGender, Role(role: element.name).toMap());
      }
      for (var element in AgeEnum.values) {
        db.insert(DatabaseRequest.tableAge, Role(role: element.name).toMap());
      }
      for (var element in StatysEnum.values) {
        db.insert(DatabaseRequest.tableStatus, Role(role: element.name).toMap());
      }
      db.insert(DatabaseRequest.tableUser, User(login: 'admin', idRole: RoleEnum.admin, password: 'admin123',).toMap(),);
    } on DatabaseException catch (error) {
      print(error.result);
    }
  }


}
