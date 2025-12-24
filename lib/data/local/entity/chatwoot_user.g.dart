// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatwoot_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatwootUser _$ChatwootUserFromJson(Map<String, dynamic> json) => ChatwootUser(
      identifier: json['identifier'] as String?,
      identifierHash: json['identifier_hash'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      customAttributes: json['custom_attributes'],
    );

Map<String, dynamic> _$ChatwootUserToJson(ChatwootUser instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'identifier_hash': instance.identifierHash,
      'name': instance.name,
      'email': instance.email,
      'avatar_url': instance.avatarUrl,
      'custom_attributes': instance.customAttributes,
    };
