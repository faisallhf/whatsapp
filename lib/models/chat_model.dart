class ChatModel {
  String? name;
  String? icon;
  bool? isGroup;
  String? time;
  String? current_message;
  String? status;
  bool select = false;
  ChatModel({
    this.name,
    this.icon,
    this.isGroup,
    this.time,
    this.current_message,
    this.status,
    this.select = false,
  });
}
