import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../utils/validation_functions.dart';
import '../screens.dart';
import 'controllers/signin.controller.dart';

class SigninScreen extends GetView<SigninController> {
  const SigninScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SigninController controller = Get.put(SigninController());
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: Get.height,
                width: Get.width,
                child: Stack(children: [
                  Container(
                      width: Get.width,
                      // height: 320,
                      child: Image.asset(
                        'assets/images/login_background.png',
                        fit: BoxFit.fitWidth,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: Get.height * .25, bottom: 1),
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome !',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.75,
                              height: 1.00),
                        ),
                        SizedBox(
                          child: Text('Log in to your  account to continue',
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
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                              top: Get.height * .33, bottom: 15),
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
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.0),
                                              child: Text('Email Address',
                                                  style: TextStyle(
                                                    fontFamily: 'Raleway',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.75,
                                                  )),
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
                                                      hintText: 'abc@gmail.com',
                                                      hintStyle: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.grey),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  5.00),
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .black)),
                                                      disabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  5.00),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  Colors.grey)),
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  5),
                                                          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                                                      contentPadding: EdgeInsets.only(left: 10, top: 10.00, bottom: 10.00)),
                                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Gilroy-Medium', fontWeight: FontWeight.w400)),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 40.0),
                                              child: Text('Password',
                                                  style: TextStyle(
                                                    fontFamily: 'Raleway',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.75,
                                                  )),
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
                                                                      .black)),
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
                                                      // style: TextStyle(
                                                      //     color: Colors.black,
                                                      //     fontSize: 18.0,
                                                      //     fontFamily: 'Gilroy-Medium',
                                                      //     fontWeight: FontWeight.w400)
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
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(children: [
                                                      Obx(() => SizedBox(
                                                            width: 25,
                                                            height: 30,
                                                            child: Checkbox(
                                                                hoverColor:
                                                                    Colors
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
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 1.0),
                                                        child: Text(
                                                            'Remember me',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .grey)),
                                                      )
                                                    ]),
                                                  ),
                                                  Text('Forgot Password',
                                                      style: TextStyle(
                                                          fontFamily: 'Raleway',
                                                          fontSize: 14,
                                                          color: Colors.green,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          // letterSpacing: 0.75,
                                                          height: 1.00))
                                                ]),
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
                                                        top: 50, bottom: 10),
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
                                                      'Log In',
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
                                                    () => SignupScreen(),
                                                    transition:
                                                        Transition.cupertino),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                        'Don\'t have an account?',
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
                                                      child: Text('Sign Up',
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
