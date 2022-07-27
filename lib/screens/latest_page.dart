import 'package:daryo/models/news.dart';
import 'package:flutter/material.dart';

class LatestPage extends StatefulWidget {
  const LatestPage({Key? key}) : super(key: key);

  @override
  State<LatestPage > createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {

  static List<News> news = [
    News(title: "Mandarin va pomidor arzonladi, piyoz va guruch qimmatlashdi. O‘zbekiston bozorlarida iyul oyidagi narxlar qanday?", content: "content", time: "12:30", date: "13 mart 2022", imgUrl: "https://daryo.uz/cache/2020/08/bozor-guruch-2-680x453-680x453.jpg", watchCount: "10485")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
        return newsItem(news[index]);
      },),
    );
  }

  Padding newsItem(News news) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
             const Text("Maslahatlar", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
             Row(children: [
               Text("${news.time} | ${news.date} |", style: const TextStyle(color: Colors.grey),),
               Icon(Icons.visibility_outlined,
               color: Colors.blue[300],
               ),
               const SizedBox( width: 4),
               Text("${news.watchCount}"),
             ],)
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network( "${news.imgUrl}",
                width: 140,),
                const SizedBox(width: 12.0,),
                Expanded(
                  child: Text( "${news.title}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),),

                )
              ],
            ),
            const Divider(
              thickness: 1.0,
            )
          ],
        ),
      );
  }
}