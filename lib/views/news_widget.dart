import 'package:flutter/material.dart';
import './news_detail.dart';
import 'package:app_news/models/news.dart';
import 'package:app_news/provider/news_provider.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetail(
            product: product,
          );
        }));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.grey,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product.images),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                width: 0.3,
              ),
              Container(
                // color: Colors.red,
                height: 130.0,
                width: MediaQuery.of(context).size.width * 0.6,
                padding: EdgeInsets.all(10.0),
                child: Text(
                  product.title,
                  // overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Hero(
        //       tag: product.images,
        //       child: Padding(
        //         padding: const EdgeInsets.only(left: 10),
        //         child: Container(
        //           height: MediaQuery.of(context).size.height * 0.2,
        //           // width: 100,
        //           // width: 150,
        //           decoration: BoxDecoration(
        //               image: DecorationImage(
        //                   image: NetworkImage(product.images),
        //                   fit: BoxFit.contain)),
        //         ),
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 8,
        //     ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //   child: Text(
        //     product.title,
        //     maxLines: 2,
        //     textAlign: TextAlign.center,
        //     style: const TextStyle(
        //       fontSize: 20,
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),
        // ),
        //   ],
        // ),
      ),
    );
  }
}
