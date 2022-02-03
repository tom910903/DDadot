class CommentModel{
  CommentModel({
    required this.nickName,
    required this.town,
    required this.text,
    required this.date,
    this.commentNum = 0
  });

  String nickName;
  String town;
  String text;
  String date;
  int commentNum;
}