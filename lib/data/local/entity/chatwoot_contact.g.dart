// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatwoot_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatwootContact _$ChatwootContactFromJson(Map<String, dynamic> json) =>
    ChatwootContact(
      id: (json['id'] as num).toInt(),
      contactIdentifier: json['source_id'] as String?,
      pubsubToken: json['pubsub_token'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$ChatwootContactToJson(ChatwootContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_id': instance.contactIdentifier,
      'pubsub_token': instance.pubsubToken,
      'name': instance.name,
      'email': instance.email,
    };
