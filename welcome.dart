
import 'package:adjame_market/widgets/drawer.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final _backgroundColor = Colors.grey[200];
  final _activeColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _backgroundColor,
        endDrawer: MainDrawer(),
        appBar: AppBar(
          backgroundColor: _backgroundColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 140, // ! // TODO store
                child: Image.asset(
                  "assets/img/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
              // Text(
              //   "adjamé",
              //   style: TextStyle(fontSize: 30),
              // ),
              IconButton(
                alignment: Alignment.centerRight,
                icon: Icon(Icons.shopping_basket),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // ? Category slide navbar
              // buildNavbar(),
              CategoriesNavbar(),
              // ? Featured
              Container(
                decoration: BoxDecoration(
                    color: _activeColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.black26,
                        spreadRadius: 2,
                        offset: Offset(3, 5),
                      ),
                    ]),
                height: 200,
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                width: double.infinity,
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .5,
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 40,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "The Classic",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                            Text("Classic lorem ipsum dolor amet sit"),
                            Icon(
                              Icons.arrow_forward,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ? Image half
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image.asset(
                        "assets/img/img.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              // ? Article bloc
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Best sellers",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        GestureDetector(
                          child: Text(
                            "View all",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor,
                                fontSize: 20),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      // color: Colors.white,

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/img/image.png"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/img/image.png"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/img/image.png"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/img/image.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ,
              // ? Article bloc
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Hand-picks",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        GestureDetector(
                          child: Text(
                            "View all",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor,
                                fontSize: 20),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      // color: Colors.white,

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/img/image.png"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/img/image.png"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/img/image.png"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/img/image.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ,
            ],
          ),
        ),
      ),
    );
  }

  // ? Categories navbar slider
  // buildNavbar() => Container(
  //       height: 120, // TODO ! make responsive
  //       // color: Colors.blue,
  //       child: ListView(
  //         scrollDirection: Axis.horizontal,
  //         padding: EdgeInsets.all(10),
  //         children: <Widget>[
  //           buildIconButton(
  //             icon: Icons.color_lens,
  //             label: "Color Lens",
  //             isFirst: true,
  //           ),
  //           buildIconButton(
  //             label: "Place",
  //             icon: Icons.place,
  //             isActive: true,
  //           ),
  //           buildIconButton(
  //             label: "Queue",
  //             icon: Icons.queue_play_next,
  //           ),
  //           buildIconButton(
  //             label: "Unit",
  //             icon: Icons.ac_unit,
  //           ),
  //           buildIconButton(
  //             label: "Lock",
  //             icon: Icons.vpn_lock,
  //           ),
  //           buildIconButton(
  //             label: "Photo",
  //             icon: Icons.add_a_photo,
  //             isLast: true,
  //           ),
  //         ],
  //       ),
  //     );

  // ? NavBar Icon buttons builder
  // buildIconButton({
  //   @required IconData icon,
  //   @required String label,
  //   double size = 60,
  //   int index,
  //   bool isFirst,
  //   bool isLast,
  //   bool isActive = false,
  // }) {
  //   return Row(children: [
  //     ClipOval(
  //       child: Container(
  //         color: isActive ? _activeColor : _backgroundColor,
  //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
  //         child: Column(
  //           children: <Widget>[
  //             Icon(
  //               icon,
  //               color: isActive ? Colors.black : Colors.black26,
  //               size: size,
  //             ),
  //             if (isActive)
  //               Text(
  //                 label,
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //           ],
  //         ),
  //       ),
  //     ),
  //     SizedBox(
  //       width: 10,
  //     ),
  //   ]);
  // }

  // ? Categories section builder

}

// ? Categories navbar
class CategoriesNavbar extends StatefulWidget {
  CategoriesNavbar({Key key}) : super(key: key);

  @override
  _CategoriesNavbarState createState() => _CategoriesNavbarState();
}

class _CategoriesNavbarState extends State<CategoriesNavbar> {
  @override
  Widget build(BuildContext context) {
    // var initialIndex = 0;
    //
    return Container(
      height: 120, // TODO ! make responsive
      // color: Colors.blue,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          buildIconButton(
            icon: Icons.color_lens,
            label: "Color Lens",
            isFirst: true,
          ),
          buildIconButton(
            label: "Place",
            icon: Icons.place,
            isActive: true,
          ),
          buildIconButton(
            label: "Queue",
            icon: Icons.queue_play_next,
          ),
          buildIconButton(
            label: "Unit",
            icon: Icons.ac_unit,
          ),
          buildIconButton(
            label: "Lock",
            icon: Icons.vpn_lock,
          ),
          buildIconButton(
            label: "Photo",
            icon: Icons.add_a_photo,
            isLast: true,
          ),
        ],
      ),
    );
  }

  // ? NavBar Icon buttons builder
  buildIconButton({
    IconData icon, // ! required
    String label, // ! required
    double size = 60,
    int index,
    bool isFirst,
    bool isLast,
    bool isActive = false,
  }) {
    final _backgroundColor = Colors.grey[200];
    final _activeColor = Colors.white;
    return Row(children: [
      ClipOval(
        child: InkWell(
          onTap: () {
            print("tapped");
            setState(() {
              // isActive
            });
          },
          child: Container(
            color: isActive ? _activeColor : _backgroundColor,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Column(
              children: <Widget>[
                Icon(
                  icon,
                  color: isActive ? Colors.black : Colors.black26,
                  size: size,
                ),
                if (isActive)
                  Text(
                    label,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
    ]);
  }
}
