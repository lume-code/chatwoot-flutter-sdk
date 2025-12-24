import 'package:hive/hive.dart';

import '../local_storage.dart';
import 'chatwoot_contact.dart';

class ChatwootContactAdapter extends TypeAdapter<ChatwootContact> {
  @override
  final int typeId = CHATWOOT_CONTACT_HIVE_TYPE_ID;

  @override
  ChatwootContact read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatwootContact(
      id: fields[0] as int,
      contactIdentifier: fields[1] as String?,
      pubsubToken: fields[2] as String?,
      name: fields[3] as String,
      email: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ChatwootContact obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.contactIdentifier)
      ..writeByte(2)
      ..write(obj.pubsubToken)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatwootContactAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
