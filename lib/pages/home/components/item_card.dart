import 'package:flutter/material.dart';
import 'package:smakos/models/Product.dart';
import 'package:smakos/pages/details/details_screen.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback? press;
  const ItemCard({
    Key? key,
    required this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paletteGenerator;
    var itemBackgroundColor = Color(0xFF23FF23);

    Future<PaletteGenerator> _updatePaletteGenerator() async {
      paletteGenerator = await PaletteGenerator.fromImageProvider(
        Image.asset(product.image).image,
      );
      return paletteGenerator;
    }

    return FutureBuilder<PaletteGenerator>(
      future: _updatePaletteGenerator(), // async work
      builder:
          (BuildContext context, AsyncSnapshot<PaletteGenerator> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          default:
            if (snapshot.hasError)
              return new Text('Error: ${snapshot.error}');
            else {
              // Color color=new Color(snapshot.data.dominantColor.color);
              itemBackgroundColor = snapshot.data!.dominantColor!.color;
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: product,
                      itemBackgroundColor: itemBackgroundColor,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(kDefaultPaddin),
                          decoration: BoxDecoration(
                            color: itemBackgroundColor,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Hero(
                            tag: "${product.id}",
                            child: Image.asset(product.image),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPaddin / 4),
                      child: Text(
                        // products is out demo list
                        product.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${product.price}",
                          // style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, size: 20, color: Colors.red),
                            Icon(Icons.star, size: 20, color: Colors.red),
                            Icon(Icons.star, size: 20, color: Colors.red),
                            Icon(Icons.star_outline,
                                size: 20, color: Colors.red),
                            Icon(Icons.star_outline,
                                size: 20, color: Colors.red),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            }
        }
      },
    );
    // return GestureDetector(
    //   onTap: press,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Expanded(
    //         child: Card(
    //           elevation: 4,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(16),
    //           ),
    //           child: Container(
    //             padding: EdgeInsets.all(kDefaultPaddin),
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.circular(16),
    //               border: Border.all(
    //                 color: Colors.grey,
    //               ),
    //             ),
    //             child: Hero(
    //               tag: "${product.id}",
    //               child: Image.asset(product.image),
    //             ),
    //           ),
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
    //         child: Text(
    //           // products is out demo list
    //           product.title,
    //           style: TextStyle(
    //             fontSize: 16,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Text(
    //             "\$${product.price}",
    //             // style: TextStyle(fontWeight: FontWeight.bold),
    //           ),
    //           Row(
    //             children: [
    //               Icon(Icons.star, size: 20, color: Colors.red),
    //               Icon(Icons.star, size: 20, color: Colors.red),
    //               Icon(Icons.star, size: 20, color: Colors.red),
    //               Icon(Icons.star_outline, size: 20, color: Colors.red),
    //               Icon(Icons.star_outline, size: 20, color: Colors.red),
    //             ],
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
