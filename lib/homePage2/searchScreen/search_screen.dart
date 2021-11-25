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
    );
  }
}
