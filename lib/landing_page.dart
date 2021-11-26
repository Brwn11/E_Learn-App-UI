// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// int currentIndex = 0;

// class LandingPage extends StatefulWidget {
//   const LandingPage({Key? key}) : super(key: key);

//   @override
//   _LandingPageState createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   PageController? _pageController;

//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _pageController!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(right: 20.0, left: 20.0, top: 80.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Welcome to",
//                         style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.grey.shade500,
//                         ),
//                       ),
//                       const Text(
//                         "Tinos ELearn",
//                         style: TextStyle(
//                           fontSize: 40,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(20),
//                       child: Row(
//                         children: _buildIndicator(),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: MaterialButton(
//                         height: 50,
//                         minWidth: 50,
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         color: Colors.black,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                         onPressed: () {
//                           // _pageController!.nextPage(
//                           //     duration: Duration(milliseconds: 500),
//                           //     curve: Curves.ease);
//                           // setState(() {});
//                           Get.offNamed('/emailLogin');
//                         },
//                         child: const Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.7,
//               width: MediaQuery.of(context).size.width,
//               child: PageView(
//                 onPageChanged: (int page) {
//                   setState(() {
//                     currentIndex = page;
//                   });
//                 },
//                 controller: _pageController,
//                 children: <Widget>[
//                   Image.asset(
//                     'assets/images/pc.jpg',
//                     fit: BoxFit.cover,
//                   ),
//                   Image.network(
//                     'https://images.unsplash.com/photo-1549902529-a515e31f0c1c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHdpbnRlciUyMGNsb3RoaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
//                     fit: BoxFit.cover,
//                   ),
//                   Image.network(
//                     'https://images.unsplash.com/photo-1611080922224-2e0c006a4943?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
//                     fit: BoxFit.cover,
//                   ),
//                   Image.network(
//                     'https://images.unsplash.com/flagged/photo-1574876668890-2ff765c77cda?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU3fHx3aW50ZXIlMjBjbG90aGluZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
//                     fit: BoxFit.cover,
//                   ),
//                   Image.network(
//                     'https://images.unsplash.com/photo-1575919988855-f727358015b4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fHdpbnRlciUyMGNsb3RoaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// _indicator(bool isActive) {
//   return AnimatedContainer(
//     duration: const Duration(milliseconds: 300),
//     height: 6,
//     width: isActive ? 50 : 10,
//     margin: const EdgeInsets.only(right: 5),
//     decoration: BoxDecoration(
//         color: isActive ? Colors.black : Colors.grey.shade500,
//         borderRadius: BorderRadius.circular(5)),
//   );
// }

// List<Widget> _buildIndicator() {
//   List<Widget> indicators = [];
//   for (int i = 0; i < 5; i++) {
//     if (currentIndex == i) {
//       indicators.add(_indicator(true));
//     } else {
//       indicators.add(_indicator(false));
//     }
//   }
//   return indicators;
// }
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(67, 66, 113, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 50),
              FadeInRight(
                duration: const Duration(milliseconds: 1500),
                child: Image.asset(
                  'assets/images/tinos_logo.png',
                  width: 300,
                ),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1000),
                delay: const Duration(milliseconds: 500),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 50, top: 40, right: 20, bottom: 50),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        delay: const Duration(milliseconds: 1000),
                        from: 50,
                        child: const Text(
                          'Learning Code \nis now Easy',
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // FadeInUp(
                      //   duration: Duration(milliseconds: 1000),
                      //   delay: Duration(milliseconds: 1000),
                      //   from: 60,
                      //   child: Text(
                      //     'Stright from motherland ⛰',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       fontSize: 14,
                      //       color: Colors.grey.shade600,
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        delay: const Duration(milliseconds: 1000),
                        from: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Get.offNamed('/emailLogin');
                              },
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 10,
                                minimumSize: const Size(100, 50),
                                primary: Colors.black,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.offNamed('/homePage2');
                              },
                              child: const Text(
                                'EXPLORE COURSES',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
