import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderOnForeground: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          elevation: 10.0,
          child: Image.network(
            'https://cdn.shopify.com/s/files/1/0984/4522/products/Tcp-Joke-Do-You-Get-It-T-Shirt-5_large.jpg?v=1579320564',
            fit: BoxFit.fitHeight,
            width: 170,
            height: 200,
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            'From ₹250',
            style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Men's T-shirt",
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
