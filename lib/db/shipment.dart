
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
part 'shipment.g.dart';

@DriftDatabase(include: {'tracking.drift'},)

class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
  Future<List<TrackingData>> getShipments() async {
    return await select(tracking).get();
  }

  Future<int> saveShipment(TrackingCompanion companion) async {
    return await into(tracking).insert(companion);
  }

  Future<int> deleteShipment(int id) async {
    return (delete(tracking)..where((val) => tracking.id.equals(id))).go();
  }

  Future<int> deleteAllShipments() async {
    return await delete(tracking).go();
  }

  Future<int> updateShipment(TrackingCompanion companion) async {
    return await update(tracking).write(TrackingCompanion(id: companion.id,));
  }


}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'tracking.db'));
    return NativeDatabase(file);
  });
}
