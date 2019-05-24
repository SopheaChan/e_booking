import 'package:e_booking/utils/add_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'item_object.dart';

void main() {
  /*SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.blue
    )
  );*/
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Booking",
      theme:
          ThemeData(primaryIconTheme: IconThemeData(color: Colors.indigo[800])),
      home: HomepageBody(),
    );
  }
}

class HomepageBody extends StatelessWidget {
  var listItem = List<TourismPlaces>();
  var ratingValue = 0.0;
  TourismPlaces tourismPlace;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width *
        1.0; // set width to 40% of the screen width
    var height = MediaQuery.of(context).size.height *
        0.8865; // set height to 40% of the screen height
    /*listItem.add("images/ic_angkor_wat_temple.jpg");
    listItem.add("images/ic_china_ancient_palace.jpg");
    listItem.add("images/ic_madrid_castle.jpg");
    listItem.add("images/ic_maldive_bay.jpg");
    listItem.add("images/ic_bali_island.jpg");
    listItem.add("images/ic_effle_tower.jpg");
    listItem.add("images/ic_tower_of_london.jpg");
    listItem.add("images/ic_netherland_tourism_place.jpg");*/
    listItem.add(TourismPlaces("images/ic_angkor_wat_temple.jpg", "Angkor Wat Temple", "Cambodia"));
    listItem.add(TourismPlaces("images/ic_china_ancient_palace.jpg", "Ancient Palace", "China"));
    listItem.add(TourismPlaces("images/ic_madrid_castle.jpg", "Madrid Castle", "Spain"));
    listItem.add(TourismPlaces("images/ic_maldive_bay.jpg", "Maldive Island", "Maldive"));
    listItem.add(TourismPlaces("images/ic_bali_island.jpg", "Bali Island", "Indonesia"));
    listItem.add(TourismPlaces("images/ic_effle_tower.jpg", "Tower Effle", "France"));
    listItem.add(TourismPlaces("images/ic_tower_of_london.jpg", "Tower Of London", "England"));
    listItem.add(TourismPlaces("images/ic_netherland_tourism_place.jpg", "Water Way", "Netherland"));

    return Scaffold(
        backgroundColor: Colors.blueGrey[100],
        floatingActionButton: FloatingActionButton(
            elevation: 1.0,
            backgroundColor: Colors.indigo[200],
            child: Center(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  child: imageButton('images/ic_profile.png' /*, 42.0, 42.0*/),
                ),
              ),
            ),
            onPressed: () {}),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.blueGrey[100],
          title: Center(
            child: Text(
              "Discover",
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.indigo[800],
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: <Widget>[
            PopupMenuButton(
              child: GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        color: Colors.blueGrey[400],
                        blurRadius: 4.0,
                        offset: Offset(1.5, -1.5)),
                    BoxShadow(
                        color: Colors.blueGrey[400],
                        blurRadius: 3.0,
                        offset: Offset(-1.5, 1.5))
                  ]),
                  child: imageButton('images/ic_profile.png'),
                ),
              ),
              /*icon: Icon(
              Icons.account_circle,
              size: 40.0,
            ),*/
              itemBuilder: (BuildContext context) {},
            )
          ],
        ),
        drawer: Drawer(
          elevation: 5.0,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Jay Dev"),
                accountEmail: Text("jaydev@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/ic_profile.png'),
                ),
              )
            ],
          ),
        ),
        body: IntrinsicHeight(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: height,
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return Container(
                      color: Colors.blueGrey[100],
                      margin: EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                      ),
                      width: width,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 250.0,
                              width: double.infinity,
                              /*decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))
                              ),*/
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                  child: Image(
                                    image: AssetImage(listItem[position].imageUrl),
                                    filterQuality: FilterQuality.medium,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 100.0,
                              margin: EdgeInsets.only(
                                left: 32.0,
                                right: 32.0,
                              ),
                              transform:
                                  Matrix4.translationValues(0.0, -50.0, 0.0),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0)),
                                color: Colors.grey[200],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 14.0, left: 8.0, right: 8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          listItem[position].placeTitle,
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.indigo[400],
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        /*Text(
                                          ",",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.indigo[400],
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),*/

                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 10.0),
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.pink[400],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(
                                        left: 8.0, top: 4.0),
                                    child: Text(
                                      listItem[position].country,
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.indigo[300],
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        children: <Widget>[
                                          FlutterRatingBar(
                                            initialRating: 1,
                                            fillColor: Colors.amber,
                                            borderColor:
                                                Colors.amber.withAlpha(50),
                                            allowHalfRating: true,
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                              ratingValue = rating;
                                              print(ratingValue);
                                            },
                                            itemSize: 24.0,
                                          ),
                                          Text(
                                            "$ratingValue",
                                            textDirection: TextDirection.ltr,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ));
                },
                itemCount: listItem.length,
              ),
            )
          ],
        )));
  }
}
