import 'package:flutter/material.dart';

import '../model/hotel_model.dart';
import 'custom_rating.dart';
class HotelCard extends StatelessWidget {
  final HotelModel hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  child: Image.asset(
                    hotel.thumbnailPath,
                    fit: BoxFit.cover,
                  ))),
          const SizedBox(
            width: 20,
          ),
          Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.title,
                    style: const TextStyle(
                        color: Color(0xff252B5C),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Color(0xff252B5C),
                      ),
                      Text(
                        hotel.location,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  CustomRating(ratingScore: hotel.ratingScore),
                  Row(
                    children: [
                      Text(
                        '\$${hotel.price}',
                        style: TextStyle(
                            color: Color(0xff09116c),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '/night',
                        style: TextStyle(
                            color: Color(0xff09116c),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),

                ],
              )),
        ],
      ),
    );
  }
}
