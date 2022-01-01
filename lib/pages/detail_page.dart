import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw url
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            //Title
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE : TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuratakeso Hott",
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' / month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                  color: Color(0xff989BA1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // NOTE : MAIN FACILITIES
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Main Facilities",
                              style: regularTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FacilityItem(
                                  imageUrl: ('assets/images/icon_kitchen.png'),
                                  total: 2,
                                  title: 'Kitchen',
                                ),
                                FacilityItem(
                                  imageUrl: ('assets/images/icon_bedroom.png'),
                                  total: 2,
                                  title: 'Bedroom',
                                ),
                                FacilityItem(
                                  imageUrl: ('assets/images/icon_cupboard.png'),
                                  total: 2,
                                  title: 'Big Cupboard',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // NOTE : PHOTOS
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Photos",
                              style: regularTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 88,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Image.asset(
                                    'assets/images/photo1.png',
                                    width: 110,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Image.asset(
                                    'assets/images/photo2.png',
                                    width: 110,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Image.asset(
                                    'assets/images/photo3.png',
                                    width: 110,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // NOTE : Location
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: regularTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Jln. Kappan Sukses No. 20 \nPalembang",
                                  style: greyTextStyle,
                                ),
                                InkWell(
                                  onTap: () {
                                    launchUrl('https://g.page/insanpeduli');
                                  },
                                  child: Image.asset(
                                    'assets/images/icon_location.png',
                                    width: 40,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // NOTE : BUTTON
                      SizedBox(
                        height: 42,
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: purpleColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17.0))),
                          onPressed: () {
                            // launchUrl('tel:+6285320044352');
                            launchUrl('saggareres');
                          },
                          child: Text("Book Now"),
                        ),
                      ),

                      SizedBox(
                        height: 41,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      height: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
