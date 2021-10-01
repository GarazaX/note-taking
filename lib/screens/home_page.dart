import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xFF1B43AD),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14), topRight: Radius.circular(14)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          color: Color(0xFF436DFF),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 48.0,
                height: 40,
              ),
              IconButton(
                icon: Icon(
                  Icons.list,
                  size: 35,
                  color: Color(0xFF1B43AD),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 50,
        ),
        backgroundColor: Color(0xFF1B43AD),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              buildTopBar(),
              buildBody(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTopBar() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort),
            iconSize: 30,
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            iconSize: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return Container(
      height: 900,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(45))),
    );
  }
}
