// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_archetype.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanetArchetypesEnumAdapter extends TypeAdapter<PlanetArchetypesEnum> {
  @override
  final int typeId = 2;

  @override
  PlanetArchetypesEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PlanetArchetypesEnum.terran;
      case 1:
        return PlanetArchetypesEnum.toxic;
      case 2:
        return PlanetArchetypesEnum.barren;
      case 3:
        return PlanetArchetypesEnum.water;
      case 4:
        return PlanetArchetypesEnum.undefined;
      default:
        return PlanetArchetypesEnum.terran;
    }
  }

  @override
  void write(BinaryWriter writer, PlanetArchetypesEnum obj) {
    switch (obj) {
      case PlanetArchetypesEnum.terran:
        writer.writeByte(0);
        break;
      case PlanetArchetypesEnum.toxic:
        writer.writeByte(1);
        break;
      case PlanetArchetypesEnum.barren:
        writer.writeByte(2);
        break;
      case PlanetArchetypesEnum.water:
        writer.writeByte(3);
        break;
      case PlanetArchetypesEnum.undefined:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlanetArchetypesEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
