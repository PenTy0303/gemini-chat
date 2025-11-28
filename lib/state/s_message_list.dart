import 'package:clone_line/data_class/message.dart';
import 'package:clone_line/data_class/mock_message.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 's_message_list.g.dart';

@riverpod
class SMessageListNotifier extends _$SMessageListNotifier {

  @override
  List<Message> build () {
    return [];
  }

  void addMessage({required Message newMessage}) {
    var oldState = state;
    oldState = [newMessage, ...oldState];
    state = oldState;
  }

}