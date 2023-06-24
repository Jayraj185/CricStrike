import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../news/controller/newsController.dart';

class NewsDetailPage extends StatefulWidget {
  const NewsDetailPage({Key? key}) : super(key: key);

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                "assets/image/applogo.png",
                height: 30,
              ),
              const Text(
                " CRICNEWS",
              ),
            ],
          ),
          backgroundColor: const Color(0xff021852),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "   ${newsController.n1.value.author == null ? "CRICNEWS" : newsController.n1.value.author}",
                style:  GoogleFonts.bitter(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  height: .5, width: double.infinity, color: const Color(0xff021852)),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: "${newsController.n1.value.urlToImage}",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                    value: downloadProgress.progress,
                    color: const Color(0xff021852),
                  ),
                  errorWidget: (context, url, error) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [const Icon(Icons.error), const Text(" Image Not available")],
                  ),
                ),

                // Image.network(
                //   "${n1.articles![index].urlToImage}",
                //   fit: BoxFit.fill,
                // ),
                width: double.infinity,
                height: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  height: .5, width: double.infinity, color: const Color(0xff021852)),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  child: Text(
                    "${newsController.n1.value.author == null ? "CRICNEWS" : newsController.n1.value.title}",
                    style: GoogleFonts.bitter(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "    Date",
                style: GoogleFonts.bitter(fontWeight: FontWeight.w700, fontSize: 20,color: const Color(0xff021852)),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  child: Text(
                    newsController.n1.value.author == null ? DateFormat('dd, MMM yyyy').format(DateTime.now()
                    ) : DateFormat('dd, MMM yyyy').format(DateTime.parse(newsController.n1.value.publishedAt!)),
                    style: GoogleFonts.bitter(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "    Content",
                style: GoogleFonts.bitter(fontWeight: FontWeight.w700, fontSize: 20,color: const Color(0xff021852)),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  child: Text(
                    "${newsController.n1.value.author == null ? "CRICNEWS" : newsController.n1.value.content}..",
                    style: GoogleFonts.bitter(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
const SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),                child: InkWell(onTap: () async {
                await launchUrl(
                    Uri.parse("${newsController.n1.value.url}"));
                },
                  child: Text(
                    "Read More",
                    style: GoogleFonts.bitter(fontWeight: FontWeight.w700, fontSize: 16,color: const Color(0xff021852),decoration: TextDecoration.underline),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
