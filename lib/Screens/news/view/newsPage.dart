import 'package:cached_network_image/cached_network_image.dart';
import 'package:cricstreak/Screens/news/controller/newsController.dart';
import 'package:cricstreak/Screens/news/model/newsmodel.dart';
import 'package:cricstreak/Utils/apihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(
          () => FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                Newsmodel? n1 = snapshot.data;
                return Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xffe8edfa),
                      ),
                      margin: EdgeInsets.only(bottom: 5, top: 20),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "${n1.articles![index].author == null ? "CRICNEWS" : n1.articles![index].author}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () async {
                                    await Share.share('check out my website https://example.com', subject: '${n1.articles![index].content}');

                                  },
                                  icon: Icon(
                                    Icons.share,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xffe8edfa),
                            ),
                          ),
                          InkWell(
                            onLongPress: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: CachedNetworkImage(
                                        fit: BoxFit.fill,
                                        imageUrl:
                                            "${n1.articles![index].urlToImage}",
                                        progressIndicatorBuilder:
                                            (context, url, downloadProgress) =>
                                                CircularProgressIndicator(
                                          value: downloadProgress.progress,
                                          color: Color(0xff021852),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.error),
                                            Text(" mage Not available")
                                          ],
                                        ),
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
                              padding: EdgeInsets.only(left: 5, right: 5),
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: "${n1.articles![index].urlToImage}",
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                  color: Color(0xff021852),
                                ),
                                errorWidget: (context, url, error) => Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.error),
                                    Text(" Image Not available")
                                  ],
                                ),
                              ),

                              // Image.network(
                              //   "${n1.articles![index].urlToImage}",
                              //   fit: BoxFit.fill,
                              // ),
                              width: double.infinity,
                              height: 200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 6, left: 6, top: 10),
                            child: Column(
                              children: [
                                SelectableText(
                                  "${n1.articles![index].title}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.5,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SelectableText(
                                    "${n1.articles![index].content}"),
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
            future: ApiHelper.apiHelper.GetData(
                Sportname: newsController.gamename.value == 0
                    ? "cricket"
                    : "football"),
          ),
        ),
      ],
    );
  }
}
