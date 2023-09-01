import 'package:hotel_booking/model/hotel_model.dart';
import 'package:hotel_booking/repository/hotel_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'all_hotels_provider.g.dart';

@riverpod
Future<List<HotelModel>> allHotels(AllHotelsRef ref)async{
  final HotelRepository hotelRepository= ref.watch(hotelRepositoryProvider);
  return hotelRepository.getHotels();
}