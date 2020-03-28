import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/delivery_locations.dart';
import 'package:food_delivery_app/widgets/popular_restaurants.dart';
import 'package:food_delivery_app/widgets/special_offers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DeliveryLocations> _locations = DeliveryLocations.getDeliveryLocations();
  List<DropdownMenuItem<DeliveryLocations>> _dropDownMenuItems;
  DeliveryLocations _deliveryLocation;

  final _controller = TextEditingController();

  @override
  void initState() {
    _dropDownMenuItems = buildDropDownMenuItems(_locations);
    _deliveryLocation = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<DeliveryLocations>> buildDropDownMenuItems(
      List locations) {
    List<DropdownMenuItem<DeliveryLocations>> items = List();
    for (DeliveryLocations deliveryLocation in locations) {
      items.add(
        DropdownMenuItem(
          value: deliveryLocation,
          child: Text(
            deliveryLocation.location,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      );
    }

    return items;
  }

  onChangeDropdownItem(DeliveryLocations selectedLocation) {
    setState(() {
      _deliveryLocation = selectedLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: Container(
                height: 50.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => print('menu drawer pressed'),
                      child: Container(
                        width: 60.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen.shade400,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.menu,
                            color: Colors.white.withOpacity(.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Delivery to',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                        Container(
                          height: 35.0,
                          child: DropdownButton(
                            value: _deliveryLocation,
                            items: _dropDownMenuItems,
                            onChanged: onChangeDropdownItem,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // this is nonsense, we probably need a TextField here i just needed a quick way but it aint good
            // sorry for the laziness
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: _buildSearchField(
                context,
                _controller,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                'Special offers',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 240.0,
              child: SpecialOffers(),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                'Popular Restaurants',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(height: 400.0, child: PopularRestaurants(),),
          ],
        ),
      ),
    );
  }
}

Widget _buildSearchField(
    BuildContext context, TextEditingController controller) {
  return TextField(
    controller: controller,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.search,
        size: 17.0,
      ),
      labelText: 'e.x Chicken, Pasta...',
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}
