import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lawma/infrastructure/navigation/routes.dart';
import 'package:lawma/presentation/home/home.screen.dart';
import 'package:lawma/presentation/signin/signin.screen.dart';
import 'package:lawma/presentation/tab/tab.screen.dart';
import 'package:lawma/utils/validation_functions.dart';

import 'controllers/signup.controller.dart';

class SignupScreen extends GetView<SignupController> {
  SignupController controller = Get.put(SignupController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: Get.height,
                width: Get.width,
                child: Stack(children: [
                  Container(
                      width: Get.width,
                      child: Image.asset(
                        'assets/images/Rectangle_100.png',
                        fit: BoxFit.fitWidth,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: Get.height * .27, bottom: 1),
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign Up!',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.75,
                              height: 1.00),
                        ),
                        SizedBox(
                          child: Text('Create an account to get started',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.75,
                                  height: 1.00)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Container(
                          margin:
                              EdgeInsets.only(top: Get.height * .35, bottom: 0),
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Form(
                                    key: _formKey,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 30, left: 20, right: 20),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Full Name',
                                                style: TextStyle(
                                                    fontFamily: 'Raleway',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.75,
                                                    height: 1.00)),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              width: Get.width * .95,
                                              child: TextFormField(
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .fullNameController,
                                                  validator: (value) {
                                                    if (!isText(value)) {
                                                      return "Kindly Enter a Valid Name";
                                                    }
                                                    return null;
                                                  },
                                                  decoration: InputDecoration(
                                                      focusColor: Colors.amber,
                                                      hintText:
                                                          'Enter Your Full Name',
                                                      hintStyle: TextStyle(
                                                          fontFamily: 'Raleway',
                                                          fontSize: 15,
                                                          color: Colors.grey),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  5.00),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  Colors.grey)),
                                                      disabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.00),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  Colors.grey)),
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(5),
                                                          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                                                      contentPadding: EdgeInsets.only(left: 10, top: 14.00, right: 30.00, bottom: 14.00)),
                                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Gilroy-Medium', fontWeight: FontWeight.w400)),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 15.0),
                                              child: Text('Email Address',
                                                  style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.75,
                                                      height: 1.00)),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 5,
                                              ),
                                              width: Get.width * .95,
                                              child: TextFormField(
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .emailController,
                                                  validator: (value) {
                                                    if (!isValidEmail(value)) {
                                                      return "Invalid Email";
                                                    }
                                                    return null;
                                                  },
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          'Enter Your Email Address',
                                                      hintStyle: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.grey),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  5.00),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  Colors.grey)),
                                                      disabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.00),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  Colors.grey)),
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(5),
                                                          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                                                      contentPadding: EdgeInsets.only(left: 10, top: 14.00, bottom: 14.00)),
                                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Gilroy-Medium', fontWeight: FontWeight.w400)),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 15.0),
                                              child: Text('Password',
                                                  style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.75,
                                                      height: 1.00)),
                                            ),
                                            Obx(
                                              () => Container(
                                                margin: EdgeInsets.only(
                                                    top: 5, bottom: 5),
                                                width: Get.width * .95,
                                                child: TextFormField(
                                                    obscureText: controller
                                                        .passwordVisible.value,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .passwordController,
                                                    // validator: (value) {
                                                    //   if (!isText(value)) {
                                                    //     return "Please enter valid text";
                                                    //   }
                                                    //   return null;
                                                    // },

                                                    decoration: InputDecoration(
                                                      suffixIcon: InkWell(
                                                          onTap: () {
                                                            controller
                                                                    .passwordVisible
                                                                    .value =
                                                                !controller
                                                                    .passwordVisible
                                                                    .value;
                                                          },
                                                          child: Icon(
                                                            color: Colors.grey,
                                                            controller
                                                                    .passwordVisible
                                                                    .value
                                                                ? Icons
                                                                    .visibility
                                                                : Icons
                                                                    .visibility_off_rounded,
                                                          )),
                                                      hintText:
                                                          'Enter Your Password',
                                                      hintStyle: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.grey),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.00),
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey)),
                                                      disabledBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.00),
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey)),
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          borderSide: BorderSide(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255))),
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              left: 10,
                                                              top: 14.00,
                                                              bottom: 14.00),
                                                    ),
                                                    validator: (value) {
                                                      if (!isValidPassword(
                                                          value)) {
                                                        return "Password must contain 0-9/A-Z/Symbols";
                                                      }
                                                      return null;
                                                    }),
                                              ),
                                            ),
                                            Container(
                                              width: Get.width,
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Obx(() => SizedBox(
                                                          width: 25,
                                                          height: 30,
                                                          child: Checkbox(
                                                              hoverColor: Colors
                                                                  .green,
                                                              splashRadius: 5,
                                                              activeColor: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      25,
                                                                      89,
                                                                      27),
                                                              value: controller
                                                                  .isChecked
                                                                  .value,
                                                              onChanged: (val) =>
                                                                  controller
                                                                      .toggle()),
                                                        )),
                                                    Container(
                                                      child: Row(children: [
                                                        Text('I agree to the ',
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                        Text(
                                                            'terms of service  ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .green)),
                                                        Text(
                                                          'and ',
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                        Text('privacy policy. ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .green))
                                                      ]),
                                                    )
                                                  ]),
                                            ),
                                            InkWell(
                                                onTap: () => Get.to(
                                                      () => TabScreen(),
                                                      transition: Transition
                                                          .circularReveal,
                                                    ),
                                                child: Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20, bottom: 10),
                                                    margin: EdgeInsets.only(
                                                        top: 20, bottom: 10),
                                                    width: Get.width,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        gradient: LinearGradient(
                                                            colors: [
                                                              Color.fromARGB(
                                                                  255,
                                                                  18,
                                                                  167,
                                                                  88),
                                                              Color.fromARGB(
                                                                  255,
                                                                  18,
                                                                  167,
                                                                  88),
                                                            ],
                                                            begin: Alignment
                                                                .topRight,
                                                            end: Alignment
                                                                .bottomLeft)),
                                                    child: Text(
                                                      'Sign Up',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ))),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0),
                                              child: GestureDetector(
                                                onTap: () => Get.to(
                                                    () => SigninScreen(),
                                                    transition:
                                                        Transition.cupertino),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                        'Already have an account?',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Raleway',
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 0.75,
                                                            height: 1.00)),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5),
                                                      child: Text('Log In',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Raleway',
                                                              fontSize: 15,
                                                              color:
                                                                  Colors.green,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              letterSpacing:
                                                                  0.75,
                                                              height: 1.00)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]),
                                    ))
                              ])),
                    ),
                  )
                ]))));
  }
}
