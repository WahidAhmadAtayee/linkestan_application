// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linkestan_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VisitCardAdapter extends TypeAdapter<VisitCard> {
  @override
  final int typeId = 1;

  @override
  VisitCard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VisitCard(
      fields[0] as dynamic,
      fields[1] as dynamic,
      fields[2] as dynamic,
      fields[3] as dynamic,
      fields[4] as dynamic,
      fields[5] as dynamic,
      fields[6] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, VisitCard obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.imageFrontVisitCard)
      ..writeByte(1)
      ..write(obj.imageBackVisitCard)
      ..writeByte(2)
      ..write(obj.visitCardName)
      ..writeByte(3)
      ..write(obj.visitCardPhone)
      ..writeByte(4)
      ..write(obj.visitCardEmail)
      ..writeByte(5)
      ..write(obj.visitCardAddress)
      ..writeByte(6)
      ..write(obj.visitCardServices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VisitCardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ContactsAdapter extends TypeAdapter<Contacts> {
  @override
  final int typeId = 2;

  @override
  Contacts read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Contacts(
      fields[0] as dynamic,
      fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Contacts obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.nameContacts)
      ..writeByte(1)
      ..write(obj.phoneNumberContacts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WebsitesAdapter extends TypeAdapter<Websites> {
  @override
  final int typeId = 3;

  @override
  Websites read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Websites(
      fields[0] as dynamic,
      fields[1] as dynamic,
      fields[3] as dynamic,
      fields[4] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Websites obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.website_name)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.description_websites)
      ..writeByte(4)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebsitesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NotesAdapter extends TypeAdapter<Notes> {
  @override
  final int typeId = 4;

  @override
  Notes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Notes(
      fields[0] as dynamic,
      fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Notes obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description_notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UsersAdapter extends TypeAdapter<Users> {
  @override
  final int typeId = 5;

  @override
  Users read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Users(
      fields[0] as dynamic,
      fields[1] as dynamic,
      fields[2] as dynamic,
      fields[3] as dynamic,
      fields[4] as dynamic,
      fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Users obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.image_signup)
      ..writeByte(1)
      ..write(obj.full_name)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.password)
      ..writeByte(5)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
