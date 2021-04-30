// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  AppointmentDao? _appointmentDaoInstance;

  AppointmentTypeDao? _appointmentTypeDaoInstance;

  ClinicDao? _clinicDaoInstance;

  PatientDao? _patientDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Appointments` (`id` INTEGER NOT NULL, `date` TEXT NOT NULL, `patientId` INTEGER NOT NULL, `price` REAL, `type` TEXT, `notes` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `AppointmentTypes` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `value` REAL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Clinics` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `appointmentValue` REAL, `dentistPercentage` REAL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Patients` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `email` TEXT, `phone` TEXT, `notes` TEXT, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  AppointmentDao get appointmentDao {
    return _appointmentDaoInstance ??=
        _$AppointmentDao(database, changeListener);
  }

  @override
  AppointmentTypeDao get appointmentTypeDao {
    return _appointmentTypeDaoInstance ??=
        _$AppointmentTypeDao(database, changeListener);
  }

  @override
  ClinicDao get clinicDao {
    return _clinicDaoInstance ??= _$ClinicDao(database, changeListener);
  }

  @override
  PatientDao get patientDao {
    return _patientDaoInstance ??= _$PatientDao(database, changeListener);
  }
}

class _$AppointmentDao extends AppointmentDao {
  _$AppointmentDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _appointmentInsertionAdapter = InsertionAdapter(
            database,
            'Appointments',
            (Appointment item) => <String, Object?>{
                  'id': item.id,
                  'date': item.date,
                  'patientId': item.patientId,
                  'price': item.price,
                  'type': item.type,
                  'notes': item.notes
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Appointment> _appointmentInsertionAdapter;

  @override
  Future<List<Appointment>> listAllAppointments() async {
    return _queryAdapter.queryList('SELECT * FROM Appointments',
        mapper: (Map<String, Object?> row) => Appointment(
            id: row['id'] as int,
            date: row['date'] as String,
            patientId: row['patientId'] as int,
            price: row['price'] as double?,
            type: row['type'] as String?,
            notes: row['notes'] as String?));
  }

  @override
  Future<Appointment?> findAppointmentById(int id) async {
    return _queryAdapter.query('SELECT * FROM Appointments WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Appointment(
            id: row['id'] as int,
            date: row['date'] as String,
            patientId: row['patientId'] as int,
            price: row['price'] as double?,
            type: row['type'] as String?,
            notes: row['notes'] as String?),
        arguments: [id]);
  }

  @override
  Future<Appointment?> findAppointmentByPatientId(int id) async {
    return _queryAdapter.query(
        'SELECT * FROM Appointments WHERE patientId = ?1',
        mapper: (Map<String, Object?> row) => Appointment(
            id: row['id'] as int,
            date: row['date'] as String,
            patientId: row['patientId'] as int,
            price: row['price'] as double?,
            type: row['type'] as String?,
            notes: row['notes'] as String?),
        arguments: [id]);
  }

  @override
  Future<void> deleteAppointment(int id) async {
    await _queryAdapter.queryNoReturn('DELETE FROM Appointments WHERE id = ?1',
        arguments: [id]);
  }

  @override
  Future<void> insertAppointment(Appointment appointment) async {
    await _appointmentInsertionAdapter.insert(
        appointment, OnConflictStrategy.abort);
  }
}

class _$AppointmentTypeDao extends AppointmentTypeDao {
  _$AppointmentTypeDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _appointmentTypeInsertionAdapter = InsertionAdapter(
            database,
            'AppointmentTypes',
            (AppointmentType item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'value': item.value
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AppointmentType> _appointmentTypeInsertionAdapter;

  @override
  Future<List<AppointmentType>> listAllAppointmentTypes() async {
    return _queryAdapter.queryList('SELECT * FROM AppointmentTypes',
        mapper: (Map<String, Object?> row) => AppointmentType(
            id: row['id'] as int,
            name: row['name'] as String,
            value: row['value'] as double?));
  }

  @override
  Future<AppointmentType?> findAppointmentTypeById(int id) async {
    return _queryAdapter.query('SELECT * FROM AppointmentTypes WHERE id = ?1',
        mapper: (Map<String, Object?> row) => AppointmentType(
            id: row['id'] as int,
            name: row['name'] as String,
            value: row['value'] as double?),
        arguments: [id]);
  }

  @override
  Future<void> deleteAppointmentType(int id) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM AppointmentTypes WHERE id = ?1',
        arguments: [id]);
  }

  @override
  Future<void> insertAppointmentType(AppointmentType appointmentType) async {
    await _appointmentTypeInsertionAdapter.insert(
        appointmentType, OnConflictStrategy.abort);
  }
}

class _$ClinicDao extends ClinicDao {
  _$ClinicDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _clinicInsertionAdapter = InsertionAdapter(
            database,
            'Clinics',
            (Clinic item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'appointmentValue': item.appointmentValue,
                  'dentistPercentage': item.dentistPercentage
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Clinic> _clinicInsertionAdapter;

  @override
  Future<List<Clinic>> listAllClinics() async {
    return _queryAdapter.queryList('SELECT * FROM Clinics',
        mapper: (Map<String, Object?> row) => Clinic(
            id: row['id'] as int,
            name: row['name'] as String,
            appointmentValue: row['appointmentValue'] as double?,
            dentistPercentage: row['dentistPercentage'] as double?));
  }

  @override
  Future<Clinic?> findClinicById(int id) async {
    return _queryAdapter.query('SELECT * FROM Clinics WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Clinic(
            id: row['id'] as int,
            name: row['name'] as String,
            appointmentValue: row['appointmentValue'] as double?,
            dentistPercentage: row['dentistPercentage'] as double?),
        arguments: [id]);
  }

  @override
  Future<void> deleteClinic(int id) async {
    await _queryAdapter
        .queryNoReturn('DELETE FROM Clinics WHERE id = ?1', arguments: [id]);
  }

  @override
  Future<void> insertClinic(Clinic clinic) async {
    await _clinicInsertionAdapter.insert(clinic, OnConflictStrategy.abort);
  }
}

class _$PatientDao extends PatientDao {
  _$PatientDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _patientInsertionAdapter = InsertionAdapter(
            database,
            'Patients',
            (Patient item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'email': item.email,
                  'phone': item.phone,
                  'notes': item.notes
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Patient> _patientInsertionAdapter;

  @override
  Future<List<Patient>> listAllPatients() async {
    return _queryAdapter.queryList('SELECT * FROM Patients',
        mapper: (Map<String, Object?> row) => Patient(
            id: row['id'] as int,
            name: row['name'] as String,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            notes: row['notes'] as String?));
  }

  @override
  Future<Patient?> findPatientById(int id) async {
    return _queryAdapter.query('SELECT * FROM Patients WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Patient(
            id: row['id'] as int,
            name: row['name'] as String,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            notes: row['notes'] as String?),
        arguments: [id]);
  }

  @override
  Future<void> deletePatient(int id) async {
    await _queryAdapter
        .queryNoReturn('DELETE FROM Patients WHERE id = ?1', arguments: [id]);
  }

  @override
  Future<void> insertPatient(Patient patient) async {
    await _patientInsertionAdapter.insert(patient, OnConflictStrategy.abort);
  }
}
