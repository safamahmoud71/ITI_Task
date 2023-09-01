import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hotel_booking/provider/all_hotels_provider.dart';
import 'package:hotel_booking/widets/custom_nav_bar.dart';
import 'package:intl/intl.dart';

import '../widets/custom_text_field.dart';
import '../widets/custom_button.dart';
import '../widets/custom_icon_button.dart';
import '../widets/hotel_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CustomNavBar(index:0),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.25),
              decoration: const BoxDecoration(color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderSection(),
                    SearchCard(),
                    SizedBox(
                      height: 20,
                    ),
                    NearbyHotels(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NearbyHotels extends ConsumerWidget {
  const NearbyHotels({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotels = ref.watch(allHotelsProvider);
    return Column(
      children: [
        hotels.when(
            data: (hotels) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: hotels.length,
                  itemBuilder: (context, index) =>
                      HotelCard(hotel: hotels[index]));
            },
            error: (error, stackTrace) => Text("Error : $error"),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ))
      ],
    );
  }
}


class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/image/man.png'),
              ),
              CustomIconButton(
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const Text(
            'Welcome Back',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final locationController = TextEditingController();
    final startDateController = TextEditingController();
    final endDateController = TextEditingController();

    startDateController.text = startDateController.text =
        DateFormat('dd MMM yyyy').format(DateTime.now());
    locationController.text = 'Egypt';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white30,
          )),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.location_pin,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 20.0,
              ),
              CustomTextField(
                label: 'Where',
                controller: locationController,
              )
            ],
          ),
          const Divider(),
          Row(
            children: <Widget>[
              const Icon(
                Icons.date_range,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 20.0,
              ),
              CustomTextField(
                label: 'Form',
                controller: startDateController,
              ),
              const SizedBox(
                width: 20.0,
              ),
              CustomTextField(
                label: 'To',
                controller: startDateController,
              )
            ],
          ),
          CustomButton(text: 'Search'),
        ],
      ),
    );
  }
}
