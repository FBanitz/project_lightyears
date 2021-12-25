// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanetAdapter extends TypeAdapter<Planet> {
  @override
  final int typeId = 0;

  @override
  Planet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Planet(
      name: fields[0] as String,
      urlName: fields[1] as String,
      archetype: fields[2] as planetArchetypesEnum,
      planetIcon: fields[3] as String,
      infrastructures: (fields[4] as List).cast<dynamic>(),
      hazards: (fields[5] as List).cast<Hazard>(),
    );
  }

  @override
  void write(BinaryWriter writer, Planet obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.urlName)
      ..writeByte(2)
      ..write(obj.archetype)
      ..writeByte(3)
      ..write(obj.planetIcon)
      ..writeByte(4)
      ..write(obj.infrastructures)
      ..writeByte(5)
      ..write(obj.hazards);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlanetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
