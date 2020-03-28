import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant_model.dart';
import 'package:food_delivery_app/screens/details_page.dart';

class SpecialOffers extends StatefulWidget {
  @override
  _SpecialOffersState createState() => _SpecialOffersState();
}

class _SpecialOffersState extends State<SpecialOffers> {
  List<Restaurant> restaurants = Restaurant.getSpecialOffers();
  Restaurant _restaurant;
  double _overallRadius = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          _restaurant = restaurants[index];
          return GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  restaurant: restaurants[index],
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.0,
                bottom: 10.0,
              ),
              child: Container(
                height: 230.0,
                width: 95.0,
                margin: EdgeInsets.only(
                  right: 15.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade400,
                  borderRadius: BorderRadius.circular(_overallRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        0.0,
                        3.0,
                      ),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(_overallRadius),
                          topLeft: Radius.circular(_overallRadius),
                        ),
                        child: Image.asset(
                          'assets/images/${_restaurant.image}',
                          height: 120,
                          width: 95.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        bottom: 15.0,
                        top: 10.0,
                        right: 3.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            _restaurant.food,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            _restaurant.restaurantName,
                            style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '${_restaurant.rating} ',
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '(${_restaurant.raters}) ',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
