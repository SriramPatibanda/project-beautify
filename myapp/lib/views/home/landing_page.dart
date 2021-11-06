import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/views/home/home_controller.dart';
import 'package:myapp/views/home/widgets/custom_card.dart';
import 'package:myapp/views/home/widgets/image_carousel.dart';

class LandingPage extends GetView<HomeController> {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ImageCarousel(),
          const SizedBox(height: 20.0),
          Text(
            'Featured',
            style: GoogleFonts.roboto(
                color: const Color(0xff424242),
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomCard(
                imageURL:
                    'https://cdn.shopify.com/s/files/1/0984/4522/products/Tcp-Joke-Do-You-Get-It-T-Shirt-5_large.jpg?v=1579320564',
              ),
              CustomCard(
                  imageURL:
                      'https://cdn.shopify.com/s/files/1/0752/6435/products/4_8_2f85bf8d-257e-40b5-a177-285b34a698c2_765x.jpg?v=1624937793'),
            ],
          ),
          const SizedBox(height: 20.0),
          Text(
            'Best Sellers',
            style: GoogleFonts.roboto(
                color: const Color(0xff424242),
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomCard(
                imageURL:
                    'https://cdn.shopify.com/s/files/1/0984/4522/products/Tcp-Joke-Do-You-Get-It-T-Shirt-5_large.jpg?v=1579320564',
              ),
              CustomCard(
                  imageURL:
                      'https://cdn.shopify.com/s/files/1/0752/6435/products/4_8_2f85bf8d-257e-40b5-a177-285b34a698c2_765x.jpg?v=1624937793'),
            ],
          ),
        ]),
      ),
    );
  }
}
