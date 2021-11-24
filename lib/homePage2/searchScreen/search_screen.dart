import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          toolbarHeight: 100,
          title: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            child: const Card(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 0.0,
                  top: 0.0,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    // helperText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.grey.shade900,
        ),
        body: const Center(
          child: Text(
            'No Results',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      // child: Container(
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage(
      //         'assets/images/background2.jpg',
      //       ),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.symmetric(vertical: 20),
      //               child: Container(
      //                 decoration: const BoxDecoration(
      //                   color: Colors.grey,
      //                   borderRadius: BorderRadius.only(
      //                     topLeft: Radius.circular(30),
      //                     bottomLeft: Radius.circular(30),
      //                   ),
      //                 ),
      //                 width: MediaQuery.of(context).size.width - 100,
      //                 height: 50,
      //                 child: const Padding(
      //                   padding: EdgeInsets.symmetric(horizontal: 10),
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       border: InputBorder.none,
      //                       icon: Icon(
      //                         Icons.search,
      //                       ),
      //                       labelText: 'Search Courses',
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
