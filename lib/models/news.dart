class News {
  String? title;
  String? content;
  String? imgUrl;
  String? date;
  String? time;
  String? watchCount;

  News(
      {this.title,
      this.content,
      this.imgUrl,
      this.date,
      this.time,
      this.watchCount});

  News.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    imgUrl = json['imgUrl'];
    date = json['date'];
    time = json['time'];
    watchCount = json['watchCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    data['imgUrl'] = imgUrl;
    data['date'] = date;
    data['time'] = time;
    data['watchCount'] = watchCount;
    return data;
  }
}