import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/ui/stars.dart';

class Brand_Listing extends StatefulWidget {
  @override
  _Brand_ListingState createState() => _Brand_ListingState();
}

class _Brand_ListingState extends State<Brand_Listing> {
  List brands = [
    {
      "name": "New Balance",
      "categories": ["Clothing", "Footwear"],
      "cover_image_url": "assets/shoes.png",
      "brand_imnage_url": "assets/balance.png",
      "avg_price": "600",
      "avg_review": "3.4"
    },
    {
      "name": "New Balance",
      "categories": ["Clothing", "Footwear"],
      "cover_image_url": "assets/shoes.png",
      "brand_imnage_url": "assets/balance.png",
      "avg_price": "600",
      "avg_review": "3.4"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.clear_all),
          backgroundColor: Colors.red,
          elevation: 20,
          title: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.black54, height: 3.2, fontSize: 16),
                  hintText: "Search Brand,Category,Style",
                  fillColor: Colors.white),
            ),
          )),
      body: ListView(
        children: [
          for (int i = 0; i < brands.length; i++)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Brand(brand: brands[i]),
            )
        ],
      ),
    );
  }
}

class Brand extends StatefulWidget {
  final brand;

  const Brand({Key key, this.brand}) : super(key: key);
  @override
  _BrandState createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 20,
        child: ClipPath(
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.24,
                child: Stack(
                  children: [
                    Image.asset(
                      widget.brand["cover_image_url"],
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.10,
                      left: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.137,
                        width: MediaQuery.of(context).size.width * 0.24,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                scale: 1,
                                image: AssetImage("assets/balance.png"),
                                fit: BoxFit.scaleDown)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.brand["name"],
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    StarsWidget(count: 4)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.brand["categories"].join(","),
                      style: GoogleFonts.poppins(
                          fontSize: 12.2, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "Avg Price: 400",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
