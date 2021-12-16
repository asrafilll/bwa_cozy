import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: edge,
          ),
          // NOTE: TITLE/HEADER
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Explore Now",
              style: blackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),

          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Mencari kosan yang cozy",
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          // NOTE : POPULAR CITIES
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Popular Cities",
              style: regularTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Container(
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
                  CityCard(
                    City(
                        id: 2,
                        name: "Bandung",
                        image_url: 'assets/images/city2.png',
                        isPopular: true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 3,
                      name: "Surabaya",
                      image_url: 'assets/images/city3.png')),
                  SizedBox(
                    width: 24,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // NOTE : RECOMMENDED SPACE
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text("Recommended Space",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                )),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Column(
              children: [
                SpaceCard(Space(
                    id: 1,
                    name: 'Kuretakeso Hott',
                    imageUrl: 'assets/images/space1.png',
                    price: 52,
                    city: 'Bandung',
                    country: 'Germany',
                    rate: 4)),
                SizedBox(
                  height: 30,
                ),
                SpaceCard(Space(
                    id: 2,
                    name: 'Roemah Nenek',
                    imageUrl: 'assets/images/space2.png',
                    price: 11,
                    city: 'Seattle',
                    country: 'Bogor',
                    rate: 5)),
                SizedBox(
                  height: 30,
                ),
                SpaceCard(Space(
                    id: 3,
                    name: 'Darrling How',
                    imageUrl: 'assets/images/space3.png',
                    price: 20,
                    city: 'Jakarta',
                    country: 'Indonesia',
                    rate: 3)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //NOTE : TIPS & GUIDANCE
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Tips & Guidance",
              style: regularTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: TipsCard(Tips(
                id: 1,
                name: 'City Guidelines',
                imageUrl: 'assets/images/tips1.png',
                updatedTime: 'Updated 20 Apr')),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left: edge),
              child: TipsCard(Tips(
                  id: 2,
                  name: 'Jakarta Fairship',
                  imageUrl: 'assets/images/tips2.png',
                  updatedTime: 'Updated 11 Dec'))),
          SizedBox(
            height: 60 + edge,
          ),
        ],
      )),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
