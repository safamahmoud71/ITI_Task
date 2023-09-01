import 'package:hotel_booking/model/hotel_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'hotel_repository.g.dart';



@riverpod
HotelRepository hotelRepository(HotelRepositoryRef ref)=>HotelRepository();

class HotelRepository{
  Future<List<HotelModel>> getHotels()async{
    return Future.delayed(const Duration(microseconds: 300),(){
      return HotelModel.hotels;
    });
  }

  Future<HotelModel> getHotel(String hotelId) async {
    return Future.delayed(const Duration(microseconds: 300), () {
      return HotelModel.hotels.where((hotel) => hotel.id == hotelId).first;
    });
  }

}