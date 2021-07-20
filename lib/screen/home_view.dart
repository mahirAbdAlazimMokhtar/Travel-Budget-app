import 'package:flutter/material.dart';
import 'package:travel_app/Data_Model/trip_model.dart';

class HomeView extends StatelessWidget {
  //this is list for address
  final List<Trip> tripsList = [
    Trip('Khartoum', DateTime.now(), DateTime.now(), 200.0, 'Car'),
    Trip('Bahri', DateTime.now(), DateTime.now(), 100.0, 'Taxi'),
    Trip('Al haj-Yousef', DateTime.now(), DateTime.now(), 1500.0, 'Car'),
    Trip('Sennar', DateTime.now(), DateTime.now(), 400.0, 'Car'),
    Trip('Khartoum', DateTime.now(), DateTime.now(), 200.0, 'Car'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => buildTripCard(
          context,
          index,
        ),
        itemCount: tripsList.length,
      ),
    );
  }//this is custom widget for listView

  Widget buildTripCard(BuildContext context, int index) {
    return Container(
      child: Card(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
