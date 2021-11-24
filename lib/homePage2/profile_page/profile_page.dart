

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/mbb.jpg',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Millie Bobby Brown",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "mbb@gmail.com",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              profilePageIcon(
                context: context,
                text: "Download Options",
                onTap: () {
                  null;
                },
              ),
              profilePageIcon(
                context: context,
                text: "Video playback Options",
                onTap: () {
                  null;
                },
              ),
              profilePageIcon(
                context: context,
                text: "About Tinos",
                onTap: () {
                  null;
                },
              ),
              profilePageIcon(
                context: context,
                text: "Share",
                onTap: () {
                  null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  null;
                },
                child: const Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(
                    MediaQuery.of(context).size.width,
                    60,
                  ),
                ),
              )
              // title: Text(
              //   "Videos",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 17,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox profilePageIcon({
    required BuildContext context,
    required String text,
    required var onTap,
  }) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.grey.shade900,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style:const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onTap,
              icon: const Icon(
                Icons.arrow_forward,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
