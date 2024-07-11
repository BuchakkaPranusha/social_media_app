import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: Get.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.fitHeight),
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: 36,
                  ),
                  Visibility(
                    visible: controller.isLogin.value,
                    child: Padding(
                          padding: EdgeInsets.only(top:50.0,left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Welcome!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w400),
                          ),
                          Image.asset("assets/images/hi_image.png"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Container(
                      height: Get.height * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          color: Colors.grey.shade200),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(24, 60, 24, 16),
                            child: Text(
                              "My name is Catherine. I like dancing in the rain \nand travelling all around the world.",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: TabBar(
                                indicatorPadding: EdgeInsets.all(0),
                                dividerHeight: 0,
                                indicatorSize: TabBarIndicatorSize.label,
                                controller: controller.tabController,
                                onTap: (value) {
                                  print(value);
                                  if(value == 0){
                                    controller.isLogin.value = true;
                                  }else if(value ==1){
                                    controller.isLogin.value = false;
                                  }
                                },
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "Login",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Register",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            height: Get.height * 0.56,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      "Email Address",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                          size: 18,
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade100,
                                                width: 0.2)),
                                        hintText: "example@gmail.com",
                                        helperStyle: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      "Password",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.visibility_off,
                                          color: Colors.black,
                                          size: 18,
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade100,
                                                width: 0.2)),
                                        hintText: "Enter Password",
                                        helperStyle: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                  Visibility(
                                    visible: !controller.isLogin.value,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10, top: 10),
                                      child: Text(
                                        "Confirm Password",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: !controller.isLogin.value,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.visibility_off,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.grey.shade100,
                                                  width: 0.2)),
                                          hintText: "Repeat Password",
                                          hintStyle: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        obscureText: true,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: controller.isLogin.value,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            right: 10.0, bottom: 16),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            "Forgot password?",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    onTap: () {},
                                    child: Container(
                                      width: Get.width,
                                      padding: EdgeInsets.all(14),
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        controller.isLogin.value ?"Log in": "Sign Up",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:controller.isLogin.value ? 40:8,),
                                  Center(
                                    child: Text.rich(TextSpan(children: [
                                      TextSpan(
                                        text: controller.isLogin.value ? "Don’t have an account?" :"Already have an account?",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      TextSpan(
                                        text:controller.isLogin.value? " Sign up": "Log in",
                                        style: GoogleFonts.poppins(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ])),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                          radius: 48,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREoRGyXmHy_6aIgXYqWHdOT3KjfmnuSyxypw&s")
                          // Image radius
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
