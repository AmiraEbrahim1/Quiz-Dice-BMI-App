import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
class Scroll extends StatefulWidget {
  const Scroll({Key? key}) : super(key: key);

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
     return Scaffold(
         backgroundColor: const Color.fromRGBO(6, 37, 55, 1),
       appBar:AppBar(),
       //listview(n cartCol)
         //single
         //textfield
       body:Center(
         child: Column(
           children: [

           ],
         ),
       )
       // ListView.builder(
       //     itemBuilder:(context, index) => buildCartItem(
       //         width,height
       //     ))
       // ListView.separated(
       //     shrinkWrap: true,
       //     physics: const BouncingScrollPhysics(),
       //     itemBuilder: (context, index) => buildCartItem(
       //         width,height
       //     ),
       //     separatorBuilder: (context, index) =>
       //     const SizedBox(
       //       height: 20,
       //     ),
       //     itemCount: 10),
     );
  }
  Widget buildCartItem(double width,double height)=> Padding(
    padding: const EdgeInsets.only(left: 15,top: 15),
    child: Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Container(
                  width: width*.43,
                  height: height*.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage(
                          image: AssetImage('images/maxresdefault 1.png'),fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 139,
                  height:68 ,
                  child: Column(
                    children: [
                      Container(

                        child: Text('Elephant Toothpaste',style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),),
                        width: 149,
                        height: 20,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width:62,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(16, 52, 68,1)
                            ),
                            child: Center(
                              child: Text('Age 9-14',style: GoogleFonts.inter(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300
                              ),),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              RatingBarIndicator(
                                unratedColor: Colors.white,
                                rating: 2.0,
                                itemSize: 5,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.circle,
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 61,
                            height: 20,
                            child: Text('₹995.00',style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: width*.05,
            ),
            Column(
              children: [
                Container(
                  width: width*.43,
                  height: height*.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage(
                          image: AssetImage('images/maxresdefault 1.png'),fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 139,
                  height:68 ,
                  child: Column(
                    children: [
                      Container(

                        child: Text('Elephant Toothpaste',style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),),
                        width: 149,
                        height: 20,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width:62,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(16, 52, 68,1)
                            ),
                            child: Center(
                              child: Text('Age 9-14',style: GoogleFonts.inter(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300
                              ),),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              RatingBarIndicator(
                                unratedColor: Colors.white,
                                rating: 2.0,
                                itemSize: 5,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.circle,
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 61,
                            height: 20,
                            child: Text('₹995.00',style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

          ],
        )
      ],
    ),
  );
}
