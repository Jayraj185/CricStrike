import 'package:cached_network_image/cached_network_image.dart';
import 'package:cricstreak/Screens/news/controller/newsController.dart';
import 'package:cricstreak/Screens/news/model/newsmodel.dart';
import 'package:cricstreak/Utils/apihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return TabBarView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               FutureBuilder(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Newsmodel? n1 = snapshot.data;
                      return Expanded(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0xffffffff),
                            ),
                            margin: const EdgeInsets.only(bottom: 5, top: 20),
                            child: InkWell(
                              onTap: () {
                                newsController.n1.value = n1.articles![index];
                                Get.toNamed('ndetail');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "${n1.articles![index].author == null ? "CRICNEWS" : n1.articles![index].author}",maxLines: 1,overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.bitter(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () async {
                                            Clipboard.setData(ClipboardData(
                                                text:
                                                    "${n1.articles![index].url}"));
                                          },
                                          icon: const Icon(
                                            Icons.copy,
                                            size: 20,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () async {
                                            await Share.share(
                                                '${n1.articles![index].url}',
                                                subject:
                                                    '${n1.articles![index].content}');
                                          },
                                          icon: const Icon(
                                            Icons.share,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: 45,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7)),
                                      color: Color(0xffe8edfa),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                    child: CachedNetworkImage(fadeInDuration: const Duration(seconds: 0),
                                      fit: BoxFit.fill,
                                      imageUrl:
                                          "${n1.articles![index].urlToImage}",
                                      progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              CircularProgressIndicator(
                                        value: downloadProgress.progress,
                                        color: const Color(0xff021852),
                                      ),
                                      errorWidget: (context, url, error) => Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.error),
                                          const Text(" Image Not available")
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
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 6, left: 6, top: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "${n1.articles![index].title}",
                                          style: GoogleFonts.bitter(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.5,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "${n1.articles![index].content}",
                                          style: GoogleFonts.bitter(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
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
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                  },
                  future: ApiHelper.apiHelper.GetData(Sportname: "ipl All"),
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             FutureBuilder(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Newsmodel? n1 = snapshot.data;
                      return Expanded(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0xffffffff),
                            ),
                            margin: const EdgeInsets.only(bottom: 5, top: 20),
                            child: InkWell(
                              onTap: () {
                                newsController.n1.value = n1.articles![index];
                                Get.toNamed('ndetail');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "${n1.articles![index].author == null ? "CRICNEWS" : n1.articles![index].author}",
                                            style: GoogleFonts.bitter(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () async {
                                            Clipboard.setData(ClipboardData(
                                                text:
                                                    "${n1.articles![index].url}"));
                                          },
                                          icon: const Icon(
                                            Icons.copy,
                                            size: 20,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () async {
                                            await Share.share(
                                                '${n1.articles![index].url}',
                                                subject:
                                                    '${n1.articles![index].content}');
                                          },
                                          icon: const Icon(
                                            Icons.share,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: 45,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(7),topLeft: Radius.circular(7),),
                                      color: Color(0xffe8edfa),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.fill,
                                      imageUrl:
                                          "${n1.articles![index].urlToImage}",
                                      progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              CircularProgressIndicator(
                                        value: downloadProgress.progress,
                                        color: const Color(0xff021852),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.error),
                                          const Text(" Image Not available")
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
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 6, left: 6, top: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "${n1.articles![index].title}",
                                          style: GoogleFonts.bitter(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.5,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "${n1.articles![index].content}",
                                          style: GoogleFonts.bitter(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
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
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                  },
                  future: ApiHelper.apiHelper.GetData(
                      Sportname:"01"),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
