// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// ignore_for_file: type=lint
class Tracking extends Table with TableInfo<Tracking, TrackingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Tracking(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _trackingCodeMeta =
      const VerificationMeta('trackingCode');
  late final GeneratedColumn<String> trackingCode = GeneratedColumn<String>(
      'trackingCode', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _packageNameMeta =
      const VerificationMeta('packageName');
  late final GeneratedColumn<String> packageName = GeneratedColumn<String>(
      'packageName', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _originMeta = const VerificationMeta('origin');
  late final GeneratedColumn<String> origin = GeneratedColumn<String>(
      'origin', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _destinationMeta =
      const VerificationMeta('destination');
  late final GeneratedColumn<String> destination = GeneratedColumn<String>(
      'destination', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _statusMileStoneMeta =
      const VerificationMeta('statusMileStone');
  late final GeneratedColumn<String> statusMileStone = GeneratedColumn<String>(
      'statusMileStone', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, trackingCode, packageName, origin, destination, statusMileStone];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tracking';
  @override
  VerificationContext validateIntegrity(Insertable<TrackingData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('trackingCode')) {
      context.handle(
          _trackingCodeMeta,
          trackingCode.isAcceptableOrUnknown(
              data['trackingCode']!, _trackingCodeMeta));
    }
    if (data.containsKey('packageName')) {
      context.handle(
          _packageNameMeta,
          packageName.isAcceptableOrUnknown(
              data['packageName']!, _packageNameMeta));
    }
    if (data.containsKey('origin')) {
      context.handle(_originMeta,
          origin.isAcceptableOrUnknown(data['origin']!, _originMeta));
    }
    if (data.containsKey('destination')) {
      context.handle(
          _destinationMeta,
          destination.isAcceptableOrUnknown(
              data['destination']!, _destinationMeta));
    }
    if (data.containsKey('statusMileStone')) {
      context.handle(
          _statusMileStoneMeta,
          statusMileStone.isAcceptableOrUnknown(
              data['statusMileStone']!, _statusMileStoneMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrackingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrackingData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      trackingCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}trackingCode']),
      packageName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}packageName']),
      origin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}origin']),
      destination: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}destination']),
      statusMileStone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}statusMileStone']),
    );
  }

  @override
  Tracking createAlias(String alias) {
    return Tracking(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class TrackingData extends DataClass implements Insertable<TrackingData> {
  final int id;
  final String? trackingCode;
  final String? packageName;
  final String? origin;
  final String? destination;
  final String? statusMileStone;
  const TrackingData(
      {required this.id,
      this.trackingCode,
      this.packageName,
      this.origin,
      this.destination,
      this.statusMileStone});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || trackingCode != null) {
      map['trackingCode'] = Variable<String>(trackingCode);
    }
    if (!nullToAbsent || packageName != null) {
      map['packageName'] = Variable<String>(packageName);
    }
    if (!nullToAbsent || origin != null) {
      map['origin'] = Variable<String>(origin);
    }
    if (!nullToAbsent || destination != null) {
      map['destination'] = Variable<String>(destination);
    }
    if (!nullToAbsent || statusMileStone != null) {
      map['statusMileStone'] = Variable<String>(statusMileStone);
    }
    return map;
  }

  TrackingCompanion toCompanion(bool nullToAbsent) {
    return TrackingCompanion(
      id: Value(id),
      trackingCode: trackingCode == null && nullToAbsent
          ? const Value.absent()
          : Value(trackingCode),
      packageName: packageName == null && nullToAbsent
          ? const Value.absent()
          : Value(packageName),
      origin:
          origin == null && nullToAbsent ? const Value.absent() : Value(origin),
      destination: destination == null && nullToAbsent
          ? const Value.absent()
          : Value(destination),
      statusMileStone: statusMileStone == null && nullToAbsent
          ? const Value.absent()
          : Value(statusMileStone),
    );
  }

  factory TrackingData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrackingData(
      id: serializer.fromJson<int>(json['id']),
      trackingCode: serializer.fromJson<String?>(json['trackingCode']),
      packageName: serializer.fromJson<String?>(json['packageName']),
      origin: serializer.fromJson<String?>(json['origin']),
      destination: serializer.fromJson<String?>(json['destination']),
      statusMileStone: serializer.fromJson<String?>(json['statusMileStone']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'trackingCode': serializer.toJson<String?>(trackingCode),
      'packageName': serializer.toJson<String?>(packageName),
      'origin': serializer.toJson<String?>(origin),
      'destination': serializer.toJson<String?>(destination),
      'statusMileStone': serializer.toJson<String?>(statusMileStone),
    };
  }

  TrackingData copyWith(
          {int? id,
          Value<String?> trackingCode = const Value.absent(),
          Value<String?> packageName = const Value.absent(),
          Value<String?> origin = const Value.absent(),
          Value<String?> destination = const Value.absent(),
          Value<String?> statusMileStone = const Value.absent()}) =>
      TrackingData(
        id: id ?? this.id,
        trackingCode:
            trackingCode.present ? trackingCode.value : this.trackingCode,
        packageName: packageName.present ? packageName.value : this.packageName,
        origin: origin.present ? origin.value : this.origin,
        destination: destination.present ? destination.value : this.destination,
        statusMileStone: statusMileStone.present
            ? statusMileStone.value
            : this.statusMileStone,
      );
  @override
  String toString() {
    return (StringBuffer('TrackingData(')
          ..write('id: $id, ')
          ..write('trackingCode: $trackingCode, ')
          ..write('packageName: $packageName, ')
          ..write('origin: $origin, ')
          ..write('destination: $destination, ')
          ..write('statusMileStone: $statusMileStone')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, trackingCode, packageName, origin, destination, statusMileStone);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrackingData &&
          other.id == this.id &&
          other.trackingCode == this.trackingCode &&
          other.packageName == this.packageName &&
          other.origin == this.origin &&
          other.destination == this.destination &&
          other.statusMileStone == this.statusMileStone);
}

class TrackingCompanion extends UpdateCompanion<TrackingData> {
  final Value<int> id;
  final Value<String?> trackingCode;
  final Value<String?> packageName;
  final Value<String?> origin;
  final Value<String?> destination;
  final Value<String?> statusMileStone;
  const TrackingCompanion({
    this.id = const Value.absent(),
    this.trackingCode = const Value.absent(),
    this.packageName = const Value.absent(),
    this.origin = const Value.absent(),
    this.destination = const Value.absent(),
    this.statusMileStone = const Value.absent(),
  });
  TrackingCompanion.insert({
    this.id = const Value.absent(),
    this.trackingCode = const Value.absent(),
    this.packageName = const Value.absent(),
    this.origin = const Value.absent(),
    this.destination = const Value.absent(),
    this.statusMileStone = const Value.absent(),
  });
  static Insertable<TrackingData> custom({
    Expression<int>? id,
    Expression<String>? trackingCode,
    Expression<String>? packageName,
    Expression<String>? origin,
    Expression<String>? destination,
    Expression<String>? statusMileStone,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (trackingCode != null) 'trackingCode': trackingCode,
      if (packageName != null) 'packageName': packageName,
      if (origin != null) 'origin': origin,
      if (destination != null) 'destination': destination,
      if (statusMileStone != null) 'statusMileStone': statusMileStone,
    });
  }

  TrackingCompanion copyWith(
      {Value<int>? id,
      Value<String?>? trackingCode,
      Value<String?>? packageName,
      Value<String?>? origin,
      Value<String?>? destination,
      Value<String?>? statusMileStone}) {
    return TrackingCompanion(
      id: id ?? this.id,
      trackingCode: trackingCode ?? this.trackingCode,
      packageName: packageName ?? this.packageName,
      origin: origin ?? this.origin,
      destination: destination ?? this.destination,
      statusMileStone: statusMileStone ?? this.statusMileStone,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (trackingCode.present) {
      map['trackingCode'] = Variable<String>(trackingCode.value);
    }
    if (packageName.present) {
      map['packageName'] = Variable<String>(packageName.value);
    }
    if (origin.present) {
      map['origin'] = Variable<String>(origin.value);
    }
    if (destination.present) {
      map['destination'] = Variable<String>(destination.value);
    }
    if (statusMileStone.present) {
      map['statusMileStone'] = Variable<String>(statusMileStone.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrackingCompanion(')
          ..write('id: $id, ')
          ..write('trackingCode: $trackingCode, ')
          ..write('packageName: $packageName, ')
          ..write('origin: $origin, ')
          ..write('destination: $destination, ')
          ..write('statusMileStone: $statusMileStone')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  _$MyDatabaseManager get managers => _$MyDatabaseManager(this);
  late final Tracking tracking = Tracking(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tracking];
}

typedef $TrackingInsertCompanionBuilder = TrackingCompanion Function({
  Value<int> id,
  Value<String?> trackingCode,
  Value<String?> packageName,
  Value<String?> origin,
  Value<String?> destination,
  Value<String?> statusMileStone,
});
typedef $TrackingUpdateCompanionBuilder = TrackingCompanion Function({
  Value<int> id,
  Value<String?> trackingCode,
  Value<String?> packageName,
  Value<String?> origin,
  Value<String?> destination,
  Value<String?> statusMileStone,
});

class $TrackingTableManager extends RootTableManager<
    _$MyDatabase,
    Tracking,
    TrackingData,
    $TrackingFilterComposer,
    $TrackingOrderingComposer,
    $TrackingProcessedTableManager,
    $TrackingInsertCompanionBuilder,
    $TrackingUpdateCompanionBuilder> {
  $TrackingTableManager(_$MyDatabase db, Tracking table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $TrackingFilterComposer(ComposerState(db, table)),
          orderingComposer: $TrackingOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) => $TrackingProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String?> trackingCode = const Value.absent(),
            Value<String?> packageName = const Value.absent(),
            Value<String?> origin = const Value.absent(),
            Value<String?> destination = const Value.absent(),
            Value<String?> statusMileStone = const Value.absent(),
          }) =>
              TrackingCompanion(
            id: id,
            trackingCode: trackingCode,
            packageName: packageName,
            origin: origin,
            destination: destination,
            statusMileStone: statusMileStone,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String?> trackingCode = const Value.absent(),
            Value<String?> packageName = const Value.absent(),
            Value<String?> origin = const Value.absent(),
            Value<String?> destination = const Value.absent(),
            Value<String?> statusMileStone = const Value.absent(),
          }) =>
              TrackingCompanion.insert(
            id: id,
            trackingCode: trackingCode,
            packageName: packageName,
            origin: origin,
            destination: destination,
            statusMileStone: statusMileStone,
          ),
        ));
}

class $TrackingProcessedTableManager extends ProcessedTableManager<
    _$MyDatabase,
    Tracking,
    TrackingData,
    $TrackingFilterComposer,
    $TrackingOrderingComposer,
    $TrackingProcessedTableManager,
    $TrackingInsertCompanionBuilder,
    $TrackingUpdateCompanionBuilder> {
  $TrackingProcessedTableManager(super.$state);
}

class $TrackingFilterComposer extends FilterComposer<_$MyDatabase, Tracking> {
  $TrackingFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get trackingCode => $state.composableBuilder(
      column: $state.table.trackingCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get packageName => $state.composableBuilder(
      column: $state.table.packageName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get origin => $state.composableBuilder(
      column: $state.table.origin,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get destination => $state.composableBuilder(
      column: $state.table.destination,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get statusMileStone => $state.composableBuilder(
      column: $state.table.statusMileStone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $TrackingOrderingComposer
    extends OrderingComposer<_$MyDatabase, Tracking> {
  $TrackingOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get trackingCode => $state.composableBuilder(
      column: $state.table.trackingCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get packageName => $state.composableBuilder(
      column: $state.table.packageName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get origin => $state.composableBuilder(
      column: $state.table.origin,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get destination => $state.composableBuilder(
      column: $state.table.destination,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get statusMileStone => $state.composableBuilder(
      column: $state.table.statusMileStone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$MyDatabaseManager {
  final _$MyDatabase _db;
  _$MyDatabaseManager(this._db);
  $TrackingTableManager get tracking =>
      $TrackingTableManager(_db, _db.tracking);
}
