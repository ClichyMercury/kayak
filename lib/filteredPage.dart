import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kayak/HotelCard.dart';
import 'package:kayak/SearchSection.dart';
import 'package:kayak/main.dart';

import 'MyServices.dart';

const d_green = Color(0xFF54D3C2);
MyService _myservice = MyService();
List hotelList = _myservice.myMap2;

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '550 hotels founds',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Filters',
                              style: GoogleFonts.nunito(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.filter_list_outlined,
                                color: d_green,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: hotelList.map((hotel) {
                      return HotelCard(hotel);
                    }).toList(),
                    //someObjects.sort((a, b) => a.someProperty.compareTo(b.someProperty));
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarSection(),
    );
  }
}
