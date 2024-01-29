import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel/widgets/custom_icon_button.dart';
import 'package:travel/widgets/location_card.dart';
import 'package:travel/widgets/nearby_places.dart';
import 'package:travel/widgets/recommended_places.dart';
import 'package:travel/widgets/tourist_places.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  get selectedLocation => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let's Go "),
            Text(
              "Dude!!!",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: const [
          // LOCATION CARD
          LocationCard(),
          SizedBox(
            height: 15,
          ),
          TouristPlaces(),
          // CATEGORIES
          SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "Recommendation",
          //       style: Theme.of(context).textTheme.titleLarge,
          //     ),
          //     TextButton(onPressed: () {}, child: const Text("View All"))
          //   ],
          // ),
          SizedBox(height: 10),
          // RecommendedPlaces(selectedLocation: selectedLocation,),
          SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "Nearby From You",
          //       style: Theme.of(context).textTheme.titleLarge,
          //     ),
          //     TextButton(onPressed: () {}, child: const Text("View All"))
          //   ],
          // ),
          SizedBox(height: 10),
          //  NearbyPlaces(selectedLocation: selectedLocation,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ticket_outline),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Profile",
          )
        ],
      ),
    );
  }
}







