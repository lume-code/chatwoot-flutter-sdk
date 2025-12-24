import 'package:chatwoot_sdk/data/local/local_storage.dart';
import 'package:hive/hive.dart';

import 'chatwoot_event.dart';

class ChatwootEventMessageUserAdapter
    extends TypeAdapter<ChatwootEventMessageUser> {
  @override
  final int typeId = CHATWOOT_EVENT_USER_HIVE_TYPE_ID;

  @override
  ChatwootEventMessageUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatwootEventMessageUser(
      avatarUrl: fields[0] as String?,
      id: fields[1] as int?,
      name: fields[2] as String?,
      thumbnail: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChatwootEventMessageUser obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.avatarUrl)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.thumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatwootEventMessageUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
