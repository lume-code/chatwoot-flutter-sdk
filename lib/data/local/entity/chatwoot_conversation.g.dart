// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatwoot_conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatwootConversation _$ChatwootConversationFromJson(
        Map<String, dynamic> json) =>
    ChatwootConversation(
      id: (json['id'] as num).toInt(),
      inboxId: (json['inbox_id'] as num).toInt(),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatwootMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      contact:
          ChatwootContact.fromJson(json['contact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatwootConversationToJson(
        ChatwootConversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inbox_id': instance.inboxId,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'contact': instance.contact.toJson(),
    };
