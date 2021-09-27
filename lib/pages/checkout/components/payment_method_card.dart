import 'package:flutter/material.dart';
import 'package:smakos/models/payment_methods.dart';
import 'package:palette_generator/palette_generator.dart';

import '../payment_screen.dart';

class PaymentMethodCard extends StatelessWidget {
  final PaymentMethod paymentMethod;

  const PaymentMethodCard({
    Key? key,
    required this.paymentMethod,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var paletteGenerator;
    var itemBackgroundColor = Color(0xFF23FF23);

    Future<PaletteGenerator> _updatePaletteGenerator() async {
      paletteGenerator = await PaletteGenerator.fromImageProvider(
        Image.asset(paymentMethod.image).image,
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
              return Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: itemBackgroundColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Image.asset(paymentMethod.image),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return PaymentScreen();
                                  },
                                ),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  itemBackgroundColor),
                            ),
                            child: Text(
                              paymentMethod.label,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
        }
      },
    );
  }
}

// return FutureBuilder<PaletteGenerator>(
//   future: _updatePaletteGenerator(), // async work
//   builder:
//       (BuildContext context, AsyncSnapshot<PaletteGenerator> snapshot) {
//     switch (snapshot.connectionState) {
//       case ConnectionState.waiting:
//         return Center(child: CircularProgressIndicator());
//       default:
//         if (snapshot.hasError)
//           return new Text('Error: ${snapshot.error}');
//         else {
//           // Color color=new Color(snapshot.data.dominantColor.color);
//           itemBackgroundColor = snapshot.data.dominantColor.color;
//           return Card(
//             elevation: 4.0,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     height: 100,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: itemBackgroundColor.withOpacity(0.5),
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: Image.asset(paymentMethod.image),
//                   ),
//                   Text(
//                     paymentMethod.label,
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   Container(
//                     height: 1,
//                   )
//                 ],
//               ),
//             ),
//           );
//         }
//     }
//   },
// );
