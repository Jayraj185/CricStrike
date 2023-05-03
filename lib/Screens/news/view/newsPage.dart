import 'package:cricstreak/Screens/news/model/newsmodel.dart';
import 'package:cricstreak/Utils/apihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Newsmodel? n1 = snapshot.data;
              return Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    width: double.infinity,
                    color: Color(0xffe8edfa),
                    margin: EdgeInsets.only(bottom: 5, top: 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "${n1.articles![index].author==null?"CRICSTRIKE":n1.articles![index].author}",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                          height: 45,
                          color: Color(0xffe8edfa),
                        ),
                        InkWell(
                          onLongPress: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.network(
                                      "${n1.articles![index].urlToImage==null||n1.articles![index].urlToImage!.isEmpty||n1.articles![index].urlToImage =="null"?"https://www.bootstrap-template.com/preview-images/300110478-Newspaper-HTML-template.jpg":n1.articles![index].urlToImage}",
                                      fit: BoxFit.fill,errorBuilder: (context, error, stackTrace) {
                                       return Image.network("https://www.bootstrap-template.com/preview-images/300110478-Newspaper-HTML-template.jpg");
                                      },
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                titlePadding: EdgeInsets.all(0),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.network(
                              "${n1.articles![index].urlToImage}",
                              fit: BoxFit.fill,
                            ),
                            width: double.infinity,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 6, left: 6, top: 10),
                          child: Column(
                            children: [
                              Text(
                                "${n1.articles![index].title}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.5,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("${n1.articles![index].content}"),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  itemCount: n1!.articles!.length,
                ),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            }
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          },
          future: ApiHelper.apiHelper.GetData(Sportname: "cricket"),
        ),
      ],
    );
  }
}
