import 'package:hive/hive.dart';

import '../local_storage.dart';
import 'chatwoot_contact.dart';
import 'chatwoot_conversation.dart';
import 'chatwoot_message.dart';

class ChatwootConversationAdapter extends TypeAdapter<ChatwootConversation> {
  @override
  final int typeId = CHATWOOT_CONVERSATION_HIVE_TYPE_ID;

  @override
  ChatwootConversation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatwootConversation(
      id: fields[0] as int,
      inboxId: fields[1] as int,
      messages: (fields[2] as List).cast<ChatwootMessage>(),
      contact: fields[3] as ChatwootContact,
    );
  }

  @override
  void write(BinaryWriter writer, ChatwootConversation obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.inboxId)
      ..writeByte(2)
      ..write(obj.messages)
      ..writeByte(3)
      ..write(obj.contact);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatwootConversationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
