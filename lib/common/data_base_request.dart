abstract class DatabaseRequest{

static String deleteTable(String table) => 'DROP TABLE $table';

static const String tableRole = 'role';
static const String tableUser = 'user';
static const String tableStatus = 'status';
static const String tableAge = 'age';
static const String tableGender = 'gender';
static const String tableType = 'type';
static const String tableBicycle = 'bicycle';
static const String tableOrder = 'order';
static const String tableItem = 'item';

static const List<String> tableList =[
  tableRole,
  tableUser,
  tableStatus,
  tableAge,
tableGender,
tableType,
tableBicycle,
tableOrder,
tableItem
];
static const List<String> tableCreateList=[
_createTableRole,
_createTableUsers,
_createTableStatus,
_createTableAge,
_createTableGender,
_createTableType,
_createTableBicycle,
_createTableOrder,
_createTableItem
];
/// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableUsers =
      'CREATE TABLE "$tableUser" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT) )';
  static const String _createTableStatus =
      'CREATE TABLE "$tableStatus" ("id"	INTEGER,"status"	TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT) )';
      static const String _createTableAge =
      'CREATE TABLE "$tableAge" ("id"	INTEGER,"age"	TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT) )';
      static const String _createTableGender =
      'CREATE TABLE "$tableGender" ("id"	INTEGER,"gender"	TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT) )';
static const String _createTableType =
      'CREATE TABLE "$tableGender" ("id"	INTEGER,"type"	TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT) )';
       static const String _createTableBicycle =
      'CREATE TABLE "$tableBicycle" ("id"	INTEGER, "price" DOUBLE NOT NULL, "id_type" INT NOT NULL, "id_gender" INT NOT NULL, "id_age" INT NOT NULL,'
      'FOREIGN KEY("id_type") REFERENCES "Type"("id") ON DELETE CASCADE,'
      'FOREIGN KEY("id_gender") REFERENCES "Gender"("id") ON DELETE CASCADE,'
      'FOREIGN KEY("id_age") REFERENCES "Age"("id") ON DELETE CASCADE,'
      'PRIMARY KEY("id" AUTOINCREMENT) )';
      static const String _createTableOrder =
      'CREATE TABLE "$tableOrder" ("id"	INTEGER, "date" TEXT NOT NULL, "id_status" INT NOT NULL, "id_user" INT NOT NULL,'
      'FOREIGN KEY("id_status") REFERENCES "Status"("id") ON DELETE CASCADE,'
      'FOREIGN KEY("id_user") REFERENCES "User"("id") ON DELETE CASCADE,'
      'PRIMARY KEY("id" AUTOINCREMENT) )';
      static const String _createTableItem =
      'CREATE TABLE "$tableItem" ("id"	INTEGER, "id_user" INT NOT NULL, "id_bicycle" INT NOT NULL, "count" INT NOT NULL,'
      'FOREIGN KEY("id_user") REFERENCES "User"("id") ON DELETE CASCADE,'
      'FOREIGN KEY("id_bicycle") REFERENCES "Bicycle"("id") ON DELETE CASCADE,'
      'PRIMARY KEY("id" AUTOINCREMENT) )';
}

