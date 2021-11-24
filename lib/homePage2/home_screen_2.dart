import 'package:flutter/material.dart';

import 'home_page_2.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 10,
              //     top: 20,
              //     bottom: 0,
              //   ),
              //   child: Text(
              //     "Welcome Back",
              //     style: mainFontTextStyle1(),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 20,
                  bottom: 10,
                ),
                child: Text(
                  "Featured Courses",
                  style: mainFontTextStyle1(),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    courseUi(
                      context: context,
                      image: "assets/images/html.jpg",
                      text: "100 Days of Code :\nHTML CSS Bootcamp",
                      creator: "Dr. Angela Yu",
                      price: "\$10.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    courseUi(
                      context: context,
                      image: "assets/images/react.png",
                      text: "Modern React With Redux\nAnd More",
                      creator: "Millie",
                      price: "\$15.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    courseUi(
                      context: context,
                      image: "assets/images/flutter2.png",
                      text: "Learn Flutter With Firebase",
                      creator: "Brown",
                      price: "\$20.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 0,
                  bottom: 10,
                ),
                child: Text(
                  "Programming",
                  style: mainFontTextStyle1(),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    courseUi(
                      context: context,
                      image: "assets/images/node.png",
                      text: "Learn Node.js and \nExpress.js with Experts",
                      creator: "Tim Cook",
                      price: "\$8.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    courseUi(
                      context: context,
                      image: "assets/images/js.png",
                      text: "Learn JavaScript \ncomplete Basics",
                      creator: "Millie",
                      price: "\$15.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    courseUi(
                      context: context,
                      image: "assets/images/css.png",
                      text: "CSS Zero to Hero \nComplete Course",
                      creator: "Bobby",
                      price: "\$20.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 0,
                  bottom: 10,
                ),
                child: Text(
                  "CyberSecurity",
                  style: mainFontTextStyle1(),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    courseUi(
                      context: context,
                      image: "assets/images/kali.jpg",
                      text: "Learn Ethical Hacking\nFrom Experts",
                      creator: "Satoshi Nakomoto",
                      price: "\$20.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    courseUi(
                      context: context,
                      image: "assets/images/linux.jpg",
                      text: "Learn the basic \ncommands of Linux",
                      creator: "Millie",
                      price: "\$15.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    courseUi(
                      context: context,
                      image: "assets/images/mysql.png",
                      text: "The complete MYSQL \nbasic commands",
                      creator: "Brown",
                      price: "\$20.00",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
