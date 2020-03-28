import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant_model.dart';

class DetailsPage extends StatelessWidget {
  final Restaurant restaurant;

  const DetailsPage({this.restaurant});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
            top: 30.0,
            right: 8.0,
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 320.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(180.0),
                      bottomRight: Radius.circular(180.0),
                    ),
                    child: Container(
                      height: 250.0,
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: Image.asset(
                        'assets/images/${restaurant.image}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          width: 60.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen.shade800,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white.withOpacity(.6),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => print('details page cart'),
                        child: Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen.shade800,
                            borderRadius: BorderRadius.circular(45.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white.withOpacity(.6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 5.0,
                    bottom: 1.0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 155.0,
                      child: Card(
                        color: Colors.grey.shade300,
                        elevation: 3.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20.0,
                                left: 20.0,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      restaurant.food,
                                      style: TextStyle(
                                        color: Colors.green.shade800,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      restaurant.restaurantName,
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          size: 15.0,
                                          color: Colors.green.shade800,
                                        ),
                                        Text(
                                          '8832 Adah Vista South Guido', // TODO: Include in the model
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.green.shade700,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 20.0,
                                right: 5.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 15.0,
                                    color: Colors.green.shade800,
                                  ),
                                  Text(
                                    '${restaurant.rating} ',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '(${restaurant.raters}) ',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '\$Free delivery',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Icon(
                                    Icons.access_time,
                                    size: 15.0,
                                    color: Colors.green.shade800,
                                  ),
                                  Text(
                                    ' 35-45 Mins',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 5.0,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/img1.jpg',
                            fit: BoxFit.cover,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Chicken Marsala.',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 15.0,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    '4.2 ',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '78 Review',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                '\$35.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => print('add button pressed'),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 10.0,
                                  ),
                                  child: Container(
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.green.shade800,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/img1.jpg',
                            fit: BoxFit.cover,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Chicken Marsala.',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 15.0,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    '4.2 ',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '78 Review',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                '\$35.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => print('add button pressed'),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 10.0,
                                  ),
                                  child: Container(
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.green.shade800,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/img4.jpg',
                            fit: BoxFit.cover,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Chicken Marsala.',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 15.0,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    '4.2 ',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '78 Review',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                '\$35.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => print('add button pressed'),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 10.0,
                                  ),
                                  child: Container(
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.green.shade800,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
