import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String messageid,
    required String date,
    required String name,
    required String body,
    required bool isUser,
    @Default(false) bool isRead,
  }) = _Message;
}