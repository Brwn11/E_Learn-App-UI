import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  _PhoneLoginState createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  // Container(
                  //   width: 40,
                  //   height: 40,
                  //   decoration: BoxDecoration(
                  //     color: Colors.transparent,
                  //     borderRadius: BorderRadius.circular(10),
                  //     border: Border.all(
                  //       color: Colors.white,
                  //       width: 1,
                  //     ),
                  //   ),
                  //   child: IconButton(
                  //     onPressed: () {
                  //       null;
                  //     },
                  //     icon: const Icon(
                  //       Icons.arrow_back_ios,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Login To Tinos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'EmailLoginPage',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  GoogleIcon(
                    image: 'assets/svg/google2.svg',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  EmailIcon(
                    image: 'assets/images/email2.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              MediaQuery.of(context).size.height > 800
                  ? const Spacer()
                  : const SizedBox(
                      height: 10,
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    child: Text(
                      "Phone",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1000),
                delay: const Duration(milliseconds: 500),
                child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    // border: Border.all(
                    // color: Colors.white,
                    // width: 1,
                    // ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "8891103233",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1500),
                delay: const Duration(milliseconds: 500),
                child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    // border: Border.all(
                    //   color: Colors.white,
                    //   width: 1,
                    // ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "tinosLearn124",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: FadeInUp(
                  duration: const Duration(milliseconds: 2000),
                  delay: const Duration(milliseconds: 600),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offNamed('/homePage2');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      // border: Border.all(
                      //   color: Colors.grey,
                      //   width: 1,
                      // ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      maximumSize: Size(
                        MediaQuery.of(context).size.width - 50,
                        60,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Dont Have An Account ? ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  null;
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "OR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.offNamed('/homePage2');
                },
                child: const Text(
                  "Skip For Now",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleIcon extends StatelessWidget {
  const GoogleIcon({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        null;
      },
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.transparent,
        child: Center(
          child: SvgPicture.asset(
            image,
          ),
        ),
      ),
    );
  }
}

class EmailIcon extends StatelessWidget {
  const EmailIcon({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offNamed('/emailLogin');
      },
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.transparent,
        child: Center(
          child: Image.asset(
            image,
          ),
        ),
      ),
    );
  }
}
