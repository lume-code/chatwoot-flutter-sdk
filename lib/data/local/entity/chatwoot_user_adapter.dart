import 'package:hive/hive.dart';

import '../local_storage.dart';
import 'chatwoot_user.dart';

class ChatwootUserAdapter extends TypeAdapter<ChatwootUser> {
  @override
  final int typeId = CHATWOOT_USER_HIVE_TYPE_ID;

  @override
  ChatwootUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatwootUser(
      identifier: fields[0] as String?,
      identifierHash: fields[1] as String?,
      name: fields[2] as String?,
      email: fields[3] as String?,
      avatarUrl: fields[4] as String?,
      customAttributes: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, ChatwootUser obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.identifier)
      ..writeByte(1)
      ..write(obj.identifierHash)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.avatarUrl)
      ..writeByte(5)
      ..write(obj.customAttributes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatwootUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
