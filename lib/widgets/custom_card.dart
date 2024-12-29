
import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/pages/update_product.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id ,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 20,
                offset: Offset(10, 10),
              ),
            ]),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 6),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -60,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:store_app/models/product_model.dart';

// // ignore: must_be_immutable
// class CustomCard extends StatelessWidget {
//    CustomCard({
//     required this.product,
//     super.key,
//   });

// ProductModel product ;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){

        
//       },
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 50,
//                   color: Colors.grey.withValues(alpha: 0.5, blue: 2),
//                   spreadRadius: 20,
//                   offset: Offset(1, 1),
//                 ),
//               ],
//             ),
//             child: Card(
//               elevation: 10,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       product.title.substring(0 , 6),
//                       style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.grey),
//                     ),  
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           r"$""${product.price.toString()}",
//                           style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.grey),
//                         ),
//                         IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
      
//             right: 32,
//             top: -60,
//             child: Image.network(
//               product.image,
//               height: 100,
//               width: 100,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
