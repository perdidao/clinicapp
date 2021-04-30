import 'package:clinicapp/database.dart';
import 'package:floor/floor.dart';

import 'database.dart' as dao_factory;
import 'database.dart';

class DaoFactory {
  static AppDatabase? instance;

  static List<Migration> migrations = [];

  static Future<void> init() async {
    instance = await dao_factory.$FloorAppDatabase
        .databaseBuilder('odontopro.db')
        .addMigrations(migrations)
        .build();
  }
}
