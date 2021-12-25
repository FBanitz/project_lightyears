// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_archetype.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class planetArchetypesEnumAdapter extends TypeAdapter<planetArchetypesEnum> {
  @override
  final int typeId = 2;

  @override
  planetArchetypesEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return planetArchetypesEnum.terran;
      case 1:
        return planetArchetypesEnum.toxic;
      case 2:
        return planetArchetypesEnum.barren;
      case 3:
        return planetArchetypesEnum.water;
      case 4:
        return planetArchetypesEnum.undefined;
      default:
        return planetArchetypesEnum.terran;
    }
  }

  @override
  void write(BinaryWriter writer, planetArchetypesEnum obj) {
    switch (obj) {
      case planetArchetypesEnum.terran:
        writer.writeByte(0);
        break;
      case planetArchetypesEnum.toxic:
        writer.writeByte(1);
        break;
      case planetArchetypesEnum.barren:
        writer.writeByte(2);
        break;
      case planetArchetypesEnum.water:
        writer.writeByte(3);
        break;
      case planetArchetypesEnum.undefined:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is planetArchetypesEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
