import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Text(
              "Explore Now",
              style: blackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Mencari kosan yang cozy",
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Popular Cities",
              style: regularTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CityCard(City(
                      id: 1,
                      name: "Jakarta",
                      image_url: 'assets/images/city1.png')),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 2,
                      name: "Bandung",
                      image_url: 'assets/images/city2.png')),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 3,
                      name: "Surabaya",
                      image_url: 'assets/images/city3.png')),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
