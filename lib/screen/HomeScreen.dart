import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newscreen1/provider/news_notifier.dart';
import 'package:newscreen1/provider/news_state.dart';

import 'customwidget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Row(
          children: [
            Text("News App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              width: 100,
            ),
            Icon(Icons.cloudy_snowing,
            color: Colors.blue,),
            SizedBox(
              width: 10,
            ),

            Text("Load News",
            style: TextStyle(
              fontSize: 15,
              color: Colors.blue
            ),)
          ],

        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Consumer(
        builder: (context,ref,child) {
          final state = ref.watch(newsProvider);
          if(state.newsStatus==NewsStatus.loading){
            return CircularProgressIndicator();
          }
          if(state.newsStatus==NewsStatus.loaded){
            return ListView.builder(
              itemCount: state.newsModel!.articles!.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CustomWidget(text: state.newsModel!.articles![index].author ?? "",
                    text1: state.newsModel!.articles![index].publishedAt ?? "",
                    text2: state.newsModel!.articles![index].title ?? "",
                    text3: state.newsModel!.articles![index].description ?? "",
                    text4: state.newsModel!.articles![index].content ?? "",
                    imageUrl:state.newsModel!.articles![index].urlToImage ?? "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png",),
                );
              },


            );
          }
         if(state.newsStatus==NewsStatus.error){
           return Text(state.error!);

         }
         return SizedBox();
        }
      ),

    );
  }
}
