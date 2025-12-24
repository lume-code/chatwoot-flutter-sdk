// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatwoot_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatwootMessage _$ChatwootMessageFromJson(Map<String, dynamic> json) =>
    ChatwootMessage(
      id: idFromJson(json['id']),
      content: json['content'] as String?,
      messageType: messageTypeFromJson(json['message_type']),
      contentType: json['content_type'] as String?,
      contentAttributes: json['content_attributes'],
      createdAt: createdAtFromJson(json['created_at']),
      conversationId: idFromJson(json['conversation_id']),
      attachments: json['attachments'] as List<dynamic>?,
      sender: json['sender'] == null
          ? null
          : ChatwootEventMessageUser.fromJson(
              json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatwootMessageToJson(ChatwootMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'message_type': instance.messageType,
      'content_type': instance.contentType,
      'content_attributes': instance.contentAttributes,
      'created_at': instance.createdAt,
      'conversation_id': instance.conversationId,
      'attachments': instance.attachments,
      'sender': instance.sender?.toJson(),
    };
