


import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:travel/models/recommended_places_model.dart';

import '../pages/tourist_details_page.dart';

class RecommendedPlaces extends StatelessWidget {
  final String selectedLocation;

  const RecommendedPlaces({Key? key, required this.selectedLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> locations = locationImages[selectedLocation] ?? [];

    return SizedBox(
      height: 235,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final imagePath = locations[index]['imagePath'];
          final locationName = locations[index]['location'];

          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  // Handle onTap if needed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TouristDetailsPage(
                        image: imagePath,
                        locationName: locationName,
                        timings: "01d:32h:56m", // Replace with actual timings
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            imagePath!,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Flexible(
                        child: Row(
                          children: [
                            Flexible(
                              child: GestureDetector(
                                onTap: () => _launchMaps(locationName),
                                child: Text(
                                  locationName!,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 14,
                                ),
                                Text(
                                  "${locations[index]['rating'] ?? 0}",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Flexible(
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Theme.of(context).primaryColor,
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            Flexible(
                              child: Text(
                                locationName,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        itemCount: locations.length,
      ),
    );
  }

  _launchMaps(String location) async {
    String mapsUrl = 'https://www.google.com/maps/search/?api=1&query=$location';
    if (await canLaunch(mapsUrl)) {
      await launch(mapsUrl);
    } else {
      throw 'Could not launch $mapsUrl';
    }
  }
}
