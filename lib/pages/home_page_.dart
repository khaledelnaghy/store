import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product_services.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePAge';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100,
                  ),
                  itemBuilder: (context, index) {
                    return CustomCard(product: products[index]);
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:store_app/models/product_model.dart';
// import 'package:store_app/services/get_all_product_services.dart';
// import 'package:store_app/widgets/custom_card.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   static String id = "HomePage";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         elevation: 0.0,
//         title: Text(
//           "New Tren",
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(FontAwesomeIcons.cartPlus),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 13, right: 13, top: 65),
//         child: FutureBuilder<List<ProductModel>>(
//             future: AllProductsService().getAllProducts(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 List<ProductModel> products = snapshot.data!;
//                 return GridView.builder(
//                   itemCount: products.length,
//                     clipBehavior: Clip.none,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       childAspectRatio: 1.2,
//                       crossAxisSpacing: 10,
//                       mainAxisSpacing: 80,
//                     ),
//                     itemBuilder: (context, index) {
//                       return CustomCard(

//                         product: products[index],
//                       );
//                     });
//               } else {
//                 return Center(child: CircularProgressIndicator(),);
//               }
//             }),
//       ),
//     );
//   }
// }
