import 'package:flutter/material.dart';
import 'package:travel_app/Data_Model/trip_model.dart';
import 'package:intl/intl.dart';

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
  } //this is custom widget for listView

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripsList[index];
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(
                  children: [
                    Text(trip.title , style: new TextStyle(
                      fontSize: 30.0,
                    ),),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
                child: Row(
                  children: [
                    Text("${DateFormat('dd/MM/yyyy').format(trip.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(trip.endDate).toString()}"),
                    Spacer(),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(top:8.0, bottom: 8.0),
               child: Row(children: [
                 Text("${trip.budget.toStringAsFixed(2)}SD", style: new TextStyle(
               fontSize: 35.0,)),
                 //this widget to add space between widgets
                 Spacer(),
                 Icon(Icons.directions_car),
                 //Text(trip.travelType),
               ],),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
