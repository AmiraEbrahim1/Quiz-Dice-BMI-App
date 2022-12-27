import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Yisit extends StatefulWidget {
  const Yisit({Key? key}) : super(key: key);

  @override
  State<Yisit> createState() => _YisitState();
}

class _YisitState extends State<Yisit> {
  var carouselController=CarouselController();
  List imgList = [
    'images/maxresdefault 1.png',
    'images/maxresdefault 1.png',
    'images/maxresdefault 1.png',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  int? current;
  void changePage(int indexx){
    current=indexx;
  setState(() {
  });
  }
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
        backgroundColor: Color.fromRGBO(5, 37, 56, 1),
        body:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  carouselController:carouselController,
                  items: imgList
                      .map((e) => Container(
                    width: width * 0.8,
                    height: height * .5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(e.toString()),
                          fit: BoxFit.cover,
                        )),
                    // child: Image(
                    //       image: NetworkImage(e.toString()),fit: BoxFit.cover,
                    //     ),
                  ))
                      .toList(),
                  options: CarouselOptions(
                      onPageChanged: ((index, carouselReason) {
                      changePage(index);
                      }),
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      height: height * .2,
                      initialPage: 0,
                      reverse: false,
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      autoPlayInterval: const Duration(seconds: 3),
                      viewportFraction: .84,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: false)),
              //         Container(
              //           width: width*0.8,
              //                 height: height*.3,
              //           child: PageView.builder(
              //           itemCount: imgList.length,
              //
              // pageSnapping: true,
              // controller: _pageController,
              // onPageChanged: (page) {
              // setState(() {
              //   PubCubit.get(context).changePage(page);
              // });
              // },
              // itemBuilder: (context, pagePosition) {
              // return Container(
              // margin: EdgeInsets.all(10),
              // child: Image.asset(imgList[pagePosition]),
              // );
              // }),
              //         ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return GestureDetector(
                    onTap: () {
                      carouselController.animateToPage(index.key);
                    },
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: current == index
                            ? Colors.greenAccent
                            : Colors.white,
                      ),
                    ),
                  );
                }),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 98,
                          height: 21,
                          child: Text(
                            'TRENDING',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),

                     Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: width,
                        height: 195,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return
                                buildItem(
                                    context,
                                    // myCubit.trendingList[index]
                                    //myCubit.dataModel!.experiments![index]
                                   // ,
                                    index);
                            },
                            separatorBuilder: (context, index) =>
                            const SizedBox(
                              width: 10,
                            ),
                            itemCount: 3 ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 98,
                          height: 21,
                          child: Text(
                            'PHYSICS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: width,
                        height: 195,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => buildItem(
                              context,
                              // PubCubit.get(context).physicsList[index],
                              index,
                            ),
                            separatorBuilder: (context, index) =>
                            const SizedBox(
                              width: 10,
                            ),
                            itemCount: 3),
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 110,
                          height: 21,
                          child: Text(
                              'chemistry',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                 Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: width,
                        height: 195,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => buildItem(
                              context,
                             // PubCubit.get(context).chemistryList[index],
                              index,
                            ),
                            separatorBuilder: (context, index) =>
                            const SizedBox(
                              width: 10,
                            ),
                            itemCount:
                           3),
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        SizedBox(
                            width: 98,
                            height: 21,
                            child: Text(
                              'BIOLOGY',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),

                            ))],
                    ),
                  ),
                 Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: width,
                        height: 195,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => buildItem(
                              context,
                              // PubCubit.get(context).biologyList[index],
                              index,
                            ),
                            separatorBuilder: (context, index) =>
                            const SizedBox(
                              width: 10,
                            ),
                            itemCount:
                           3),
                      ),
                    ),

                ],
              ),
            ],
          ),
        ));

  }
  Widget buildItem(BuildContext context, int index) =>
      Container(
          width: (MediaQuery.of(context).size.width) * .5,
          height: (MediaQuery.of(context).size.height) * .4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(16, 52, 68, 1)),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: (MediaQuery.of(context).size.height) * .08,
                  child: Container(
                    height: (MediaQuery.of(context).size.height) * .32,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage('images/maxresdefault 1.png'),
                            fit: BoxFit.cover)
                    ),
                  )),
              Positioned(
                bottom: (MediaQuery.of(context).size.height) * .079,
                left:0,
                child: ClipRect(
                  child: BackdropFilter(
                    filter:  ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                    child: Container(
                      width: (MediaQuery.of(context).size.width) * .5,
                      height: (MediaQuery.of(context).size.height) *.04,
                      decoration: const BoxDecoration(
                        //     gradient: SweepGradient(colors: [
                        //   Color.fromRGBO(111, 110, 104, 150),
                        //       Color.fromRGBO(95, 95, 89, 80),
                        // ]
                        //     ),
                        color: Color.fromRGBO(111, 110, 104, 230),

                      ),

                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: (MediaQuery.of(context).size.height) * .09,//
                right: 8,
                child: SizedBox(
                  width: 91,
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Image(image: AssetImage('images/Vector.png')),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '4.5(243 reviews)',
                        style: TextStyle(color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Google Sans',
                            fontWeight:FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(27, 74, 209, 1),
                            Color.fromRGBO(28, 74, 212, 1),
                            Color.fromRGBO(23, 65, 152, 1),
                          ]),

                          borderRadius: BorderRadius.circular(20),

                          //color: const Color.fromRGBO(27, 74, 209, 1)
                        ),
                        child:
                        const Image(image: AssetImage('images/vector2.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Disengaged'),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width:
                                        (MediaQuery.of(context).size.width) / 26,

                                        // height:  (MediaQuery.of(context).size. height)/26,

                                        child: const Image(
                                          image: AssetImage('images/vector3.png'),
                                        )),
                                    const Text('10-13yrs',
                                        style: TextStyle(
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*.03,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Difficulty',
                                      style:GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),

                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
      );
}
