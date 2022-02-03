class PostModel{
  PostModel({required this.nickName,
    required this.category,
    required this.dateTime,
    required this.title,
    required this.town,
    this.images = defaultImages,
    this.text = "",
    this.commentNum = 0,
    this.likeNum = 0});

  final String nickName;
  final String dateTime;
  final String category;
  final String title;
  final String town;
  final String text;
  int likeNum;
  int commentNum;
  List<String> images;
  static const List<String> defaultImages = [];
}