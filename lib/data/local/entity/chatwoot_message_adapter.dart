import 'package:chatwoot_sdk/data/remote/responses/chatwoot_event.dart';
import 'package:hive/hive.dart';

import '../local_storage.dart';
import 'chatwoot_message.dart';

class ChatwootMessageAdapter extends TypeAdapter<ChatwootMessage> {
  @override
  final int typeId = CHATWOOT_MESSAGE_HIVE_TYPE_ID;

  @override
  ChatwootMessage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatwootMessage(
      id: fields[0] as int,
      content: fields[1] as String?,
      messageType: fields[2] as int?,
      contentType: fields[3] as String?,
      contentAttributes: fields[4] as dynamic,
      createdAt: fields[5] as String,
      conversationId: fields[6] as int?,
      attachments: (fields[7] as List?)?.cast<dynamic>(),
      sender: fields[8] as ChatwootEventMessageUser?,
    );
  }

  @override
  void write(BinaryWriter writer, ChatwootMessage obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.messageType)
      ..writeByte(3)
      ..write(obj.contentType)
      ..writeByte(4)
      ..write(obj.contentAttributes)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.conversationId)
      ..writeByte(7)
      ..write(obj.attachments)
      ..writeByte(8)
      ..write(obj.sender);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatwootMessageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
