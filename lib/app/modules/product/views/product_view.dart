import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/helpers/colors.dart';
import 'package:social_media_app/helpers/curverd_bar.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                    height: Get.height,
                    child: Stack(
              children: [
              ClipPath(
                clipper: BackgroundWaveClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: Get.height*0.48,
                  decoration: BoxDecoration(color: purple),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                // bottom: 20,
                // left: 0,
                // right: 0,
                child:  Container(
                  height: Get.height * 0.42,
                  width: 430,
                  // padding: EdgeInsets.fromLTRB(18,60,18,0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: greenColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 36,left: 24),
                        child: Text("Choose Problems",style: GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 16,color: textColor),),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: greenColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(-15,-15),
                                  color: Color(0xff68EFBD)
                                ),
                                BoxShadow(
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(15,15),
                                  color: Color(0xff4ECF9F)
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  // height: 52,
                                  width: 93,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff5CE9B4),
                                    border: Border.all(color: Color(0xffFFFFFF).withOpacity(0.2)),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        offset: Offset(0,4),
                                        color: Colors.black.withOpacity(0.25)
                                      )
                                    ]
                                  ),
                                  child: Image.asset("assets/images/braces.png",height: 20,width: 26,fit: BoxFit.contain,),
                                ),
                                SizedBox(height: 8,),
                                Text("Dental Braces",
                                style:  GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize: 18,color: textColor),
                                //  TextStyle(fontFamily: "Poppins-Medium",fontSize: 18,color: textColor),
                                 )
                            ],),
                          ),
                       
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: greenColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(-15,-15),
                                  color: Color(0xff68EFBD)
                                ),
                                BoxShadow(
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(15,15),
                                  color: Color(0xff4ECF9F)
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  // height: 52,
                                  width: 93,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff5CE9B4),
                                    border: Border.all(color: Color(0xffFFFFFF).withOpacity(0.2)),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        offset: Offset(0,4),
                                        color: Colors.black.withOpacity(0.25)
                                      )
                                    ]
                                  ),
                                  child: Image.asset("assets/images/dental_crown.png",height: 20,width: 26,fit: BoxFit.contain,),
                                ),
                                SizedBox(height: 8,),
                                Text("Dental Crown",
                                style:  GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize: 18,color: textColor),
                                // style: TextStyle(fontFamily: "Poppins-Medium",fontSize: 18,color: textColor),
                                )
                            ],),
                          )
                       
                        ],
                      ),
                      SizedBox(height: 10,),
                    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: greenColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(-15,-15),
                                  color: Color(0xff68EFBD)
                                ),
                                BoxShadow(
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(15,15),
                                  color: Color(0xff4ECF9F)
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  // height: 52,
                                  width: 93,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff5CE9B4),
                                    border: Border.all(color: Color(0xffFFFFFF).withOpacity(0.2)),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        offset: Offset(0,4),
                                        color: Colors.black.withOpacity(0.25)
                                      )
                                    ]
                                  ),
                                  child: Image.asset("assets/images/dental_filling.png",height: 20,width: 26,fit: BoxFit.contain,),
                                ),
                                SizedBox(height: 8,),
                                Text("Dental Filling",
                                style:  GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize: 18,color: textColor),
                  
                                // style: TextStyle(fontFamily: "Poppins-Medium",fontSize: 18,color: textColor),
                                )
                            ],),
                          ),
                       
                          Container(
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: greenColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(-15,-15),
                                  color: Color(0xff68EFBD)
                                ),
                                BoxShadow(
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(15,15),
                                  color: Color(0xff4ECF9F)
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  // height: 52,
                                  width: 93,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff5CE9B4),
                                    border: Border.all(color: Color(0xffFFFFFF).withOpacity(0.2)),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        offset: Offset(0,4),
                                        color: Colors.black.withOpacity(0.25)
                                      )
                                    ]
                                  ),
                                  child: Image.asset("assets/images/anesthesia.png",height: 20,width: 26,fit: BoxFit.contain,),
                                ),
                                SizedBox(height: 8,),
                                Text("Anesthesia",
                                style:  GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize: 18,color: textColor),
                                // style: TextStyle(fontFamily: "Poppins-Medium",fontSize: 18,color: textColor),
                                )
                            ],),
                          )
                        ],
                      )
                    ],
                  ),
                ),),
              Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            minRadius: 22,
                            backgroundImage:
                            NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREoRGyXmHy_6aIgXYqWHdOT3KjfmnuSyxypw&s")
                            //  NetworkImage(
                                // "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos%2Fbeauty-girl&psig=AOvVaw0DOIhuqo_oEFhWmUvIf0tv&ust=1720765668740000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCND8h92tnocDFQAAAAAdAAAAABAE"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                           Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "Welcome",
                                style: GoogleFonts.poppins(fontSize: 12,
                                    color: Colors.white,fontWeight: FontWeight.normal)
                                // style: TextStyle(
                                //     fontFamily: "Poppins-Regular",
                                //     fontSize: 12,
                                //     color: Colors.white)
                                    ),
                            TextSpan(
                                text: "\nMisty Simon",
                                style:
                                 GoogleFonts.poppins(fontSize: 16,
                                    color: Colors.white,fontWeight: FontWeight.bold),
                                //  TextStyle(
                                //     fontFamily: "Poppins-Bold",
                                //     fontSize: 16,
                                //     color: Colors.white)
                                    )
                          ])),
                          Spacer(),
                          Image.asset(
                            "assets/images/setting.png",
                            height: 30,
                            width: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Colors.white),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26),
                                borderSide: BorderSide.none),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/search_normal.png',
                                width: 8,
                                height: 8,
                                fit: BoxFit.fill,
                              ),
                            ),
                            //  suffix:Image.asset("assets/images/search_normal.png",height: 23,width: 23,),
                            hintText: 'Search doctor',
                            hintStyle: GoogleFonts.poppins(fontSize: 12,
                                    color: dot_out_color,fontWeight: FontWeight.w500),
                            // TextStyle(
                            //     fontFamily: "Poppins-Medium",
                            //     fontSize: 12,
                            //     color: dot_out_color),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Appointment Booking",
                        style:  GoogleFonts.poppins(fontSize: 16,
                                    color: Colors.white,fontWeight: FontWeight.bold),
                        // TextStyle(
                        //     fontFamily: "Poppins-Bold",
                        //     fontSize: 16,
                        //     color: Colors.white),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        // height: 400,
                        width: 380,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: container_color,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 0,
                                  offset: Offset(0, 4),
                                  color: Colors.black.withOpacity(0.25)),
                            ]),
                        child: Column(
                          children: [
                            textField("Enter Name"),
                            // SizedBox(
                            //   height: 8,
                            // ),
                            textField("Choose Date & Time"),
                            // SizedBox(
                            //   height: 8,
                            // ),
                            textField("Choose Problem"),
                            // SizedBox(
                            //   height: 8,
                            // ),
                            textField("Choose Test"),
                            // SizedBox(
                            //   height: 8,
                            // ),
                            textField("Choose Consultation"),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 280,
                              padding: EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: purple,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        offset: Offset(0, 4),
                                        color: Colors.black.withOpacity(0.25)),
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "Book Appointment",
                                style:GoogleFonts.poppins(color: Colors.white,
                                    fontSize: 16,fontWeight: FontWeight.bold)
                                //  TextStyle(
                                //     color: Colors.white,
                                //     fontFamily: "Poppins-Bold",
                                //     fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0,top: 18),
                    child: Text("Our Specialists",
                                style:  GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize: 16,color: Color(0xff1E1A34)),
                    // style: TextStyle(color: Color(0xff1E1A34),fontSize: 16,fontFamily: "Poppins-Bold"),
                    ),
                  ),
            _buildSpecialistList(),
            SizedBox(height: 40,),
            Image.asset("assets/images/address_image.png"),
            SizedBox(height: 80,),
            ],
          ),
        ));
  }
}

Widget textField(hintText) {
  return Container(
    width: 280,
    margin: EdgeInsets.all(4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: containerColor,
      boxShadow: const [
        BoxShadow(
            color: Colors.white,
            offset: Offset(-5, -5),
            blurRadius: 10,
            spreadRadius: 0),
        BoxShadow(
            color: Color(0xffDFDDED),
            offset: Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 0),
      ],
    ),
    child: TextFormField(
        decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 0),
      fillColor: container_color,
      border: InputBorder.none,
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(fontSize: 12,
                                    color: textColor,fontWeight: FontWeight.w500),
      //  TextStyle(
      //     color: textColor, fontFamily: "Poppins-Medium", fontSize: 12),
    )),
  );
}

Widget _buildSpecialistList() {
    List<Map<String, String>> specialists = [
      {'image': 'image_one.png', 'name': 'Dr. Tracy Austin'},
      {'image': 'image_two.png', 'name': 'Dr. Tracy Austin'},
      {'image': 'image_three.png', 'name': 'Dr. Tracy Austin'},
      {'image': 'images_four.png', 'name': 'Dr. Tracy Austin '},
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: specialists.length,
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 2,
        mainAxisExtent: 220,
        crossAxisCount: 2
        ),
       itemBuilder: (context,index){
        return Container(
          padding:const EdgeInsets.only(top: 8),
          margin: const EdgeInsets.only(left: 8,right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: container_color,
            boxShadow: const[
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 0,
                offset: Offset(-5, -5),
                color: Colors.white
              ),
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 0,
                offset: Offset(5, 5),
                color: Color(0xffF0F0F0)
              )
            ]
          ),
          child: Column(
            children: [
              Image.asset("assets/images/${specialists[index]['image']}"),
              SizedBox(height: 4,),
              Text(specialists[index]['name'].toString(),
                                style:  GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 13,color: textColor),

              // style: TextStyle(color: textColor,fontSize:13,fontFamily: "Poppins-Bold"),
              ),
              Text("Dental Specialist",
                                style:  GoogleFonts.poppins(fontWeight:FontWeight.normal,fontSize: 11,color: textColor),
              // style: TextStyle(color: textColor,fontSize:11,fontFamily: "Poppins-Regular"),
              ),
              SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.fromLTRB(12,4,12,4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: purple
                ),
                child: Text("Book",
                                style:  GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize: 16,color: Colors.white),

                // style: TextStyle(color: Colors.white,fontSize:16,fontFamily: "Poppins-Medium"),
                ),
              )
          
            ],
          ),
        );

       });
  }

// Widget _buildTreatmentList(){
//       List<Map<String, String>> treatments = [
//       {'image': 'braces.png', 'specialty': 'Dental Braces'},
//       {'image': 'dental_crown.png', 'specialty': 'Dental Crown'},
//       {'image': 'dental_filling.png', 'specialty': 'Dental Filling'},
//       {'image': 'anesthesia.png', 'specialty': 'Anesthesia'},
//     ];
//      return GridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: treatments.length,
//       gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 2,
//         mainAxisExtent: 220,
//         crossAxisCount: 2
//         ),
//        itemBuilder: (context,index){
//         return    Container(
//                             padding: EdgeInsets.all(18),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: greenColor,
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 25,
//                                   spreadRadius: 0,
//                                   offset: Offset(-15,-15),
//                                   color: Color(0xff68EFBD)
//                                 ),
//                                 BoxShadow(
//                                   blurRadius: 25,
//                                   spreadRadius: 0,
//                                   offset: Offset(15,15),
//                                   color: Color(0xff4ECF9F)
//                                 ),
//                               ]
//                             ),
//                             child: Column(
//                               children: [
//                                 Container(
//                                   // height: 52,
//                                   width: 93,
//                                   padding: EdgeInsets.all(12),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Color(0xff5CE9B4),
//                                     border: Border.all(color: Color(0xffFFFFFF).withOpacity(0.2)),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         blurRadius: 4,
//                                         spreadRadius: 0,
//                                         offset: Offset(0,4),
//                                         color: Colors.black.withOpacity(0.25)
//                                       )
//                                     ]
//                                   ),
//                                   child: Image.asset("assets/images/${treatments[index]['image']}",height: 20,width: 26,fit: BoxFit.contain,),
//                                 ),
//                                 SizedBox(height: 8,),
//                                 Text(treatments[index]['specialty'].toString(),style: TextStyle(fontFamily: "Poppins-Medium",fontSize: 18,color: textColor),)
//                             ],),
//                           );
                        
//        });
//     }
 