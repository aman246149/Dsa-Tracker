// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aman.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AmanAdapter extends TypeAdapter<Aman> {
  @override
  final int typeId = 0;

  @override
  Aman read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Aman(
      fields[0] as int,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Aman obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.rollno)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AmanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
