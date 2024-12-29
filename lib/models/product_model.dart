class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModel? rating;
  final String category;
  ProductModel(
      {required this.id,
      required this.title,
      required this.category,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id:jsonData['id'],
        title: jsonData['title'],
        category: jsonData['category'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: jsonData['rating'] == null
            ? null
            : RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}

// class ProductModel {
//   final int id;
//   final String title;
//   final double price;
//   final String description;
//   final String image;
//   final RatingModel rating;

//   ProductModel({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.image,
//     required this.rating,
//   });
//   factory ProductModel.fromJson(jasonData) {
//     return ProductModel(
//       id: jasonData['id'],
//       title: jasonData['title'],
//       price: jasonData['price'],
//       description: jasonData['description'],
//       image: jasonData['image'],
//       rating: RatingModel.fromJson(jasonData['rating']),
//     );
//   }
// }

// class RatingModel {
//   final double rate;
//   final int count;

//   RatingModel({
//     required this.rate,
//     required this.count,
//   });
//   factory RatingModel.fromJson(jasonData) {
//     return RatingModel(
//       rate: jasonData['rate'],
//       count: jasonData['count'],
//     );
//   }
// }
