// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getPosts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPostsImpl _$$GetPostsImplFromJson(Map<String, dynamic> json) =>
    _$GetPostsImpl(
      posts: (json['posts'] as List<dynamic>?)
              ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetPostsImplToJson(_$GetPostsImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };
