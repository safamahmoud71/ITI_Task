import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../assets.dart';



class HotelModel {
   final String id;
  final String title;
  final String location;
  final String description;
  final String thumbnailPath;
  final List<String> imagePaths;
  final int totalReview;
  final double ratingScore;
  final double price;
  final LatLng coordinate;

  const HotelModel({
    required this.id,
    required this.title,
    required this.location,
    required this.coordinate,
    required this.description,
    required this.imagePaths,
    required this.price,
    this.ratingScore = 0,
    required this.thumbnailPath,
    this.totalReview = 0,
  });
  static List<HotelModel> hotels = const[
    HotelModel(
        id: '1',
        title: 'Alana Hotel',
        location: 'Bantul Regency , yogyakarta ',
        coordinate: LatLng(-7.8147871933139434,11036921653947174),
        description: 'we have only 10-minutes drive from the water Castle',
        imagePaths: [
         Assets.images1,
          Assets.images2,Assets.images3,

        ],
        ratingScore: 3,
        totalReview: 5,
        price: 123,
        thumbnailPath: Assets.download2),
    HotelModel(
        id: '2',
        title: 'Alana Hotel',
        location: 'Bantul Regency , yogyakarta ',
        coordinate: LatLng(-7.8147871933139434,11036921653947174),
        description: 'we have only 10-minutes drive from the water Castle',
        imagePaths: [
          Assets.images1,
          Assets.images2,Assets.images3,
        ],
        ratingScore: 10,
        totalReview: 5,
        price: 123,
        thumbnailPath:Assets.download2),
    HotelModel(
        id: '3',
        title: 'Alana Hotel',
        location: 'Bantul Regency , yogyakarta ',
        coordinate: LatLng(-7.8147871933139434,11036921653947174),
        description: 'we have only 10-minutes drive from the water Castle',
        imagePaths: [
          Assets.images1,
          Assets.images2,Assets.images3,
        ],
        ratingScore: 2,
        totalReview: 5,
        price: 123,
        thumbnailPath: Assets.download2),
    HotelModel(
        id: '4',
        title: 'Alana Hotel',
        location: 'Bantul Regency , yogyakarta ',
        coordinate: LatLng(-7.8147871933139434,11036921653947174),
        description: 'we have only 10-minutes drive from the water Castle',
        imagePaths: [
          Assets.images1,
          Assets.images2,Assets.images3,
        ],
        ratingScore: 10,
        totalReview: 5,
        price: 123,
        thumbnailPath:Assets.download2),
    HotelModel(
        id: '5',
        title: 'Alana Hotel',
        location: 'Bantul Regency , yogyakarta ',
        coordinate: LatLng(-7.8147871933139434,11036921653947174),
        description: 'we have only 10-minutes drive from the water Castle',
        imagePaths: [
          Assets.images1,
          Assets.images2,Assets.images3,
        ],
        ratingScore: 10,
        totalReview: 5,
        price: 123,
        thumbnailPath:Assets.download2),


  ];
}
