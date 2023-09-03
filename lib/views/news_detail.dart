import 'package:flutter/material.dart';
import 'package:app_news/models/news.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Detail',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8.0,
              ),
              Center(
                child: Hero(
                  tag: widget.product.images,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.23,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.product.images),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        widget.product.title,
                        maxLines: 5,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // height: MediaQuery.of(context).size.height * 0.7,
                // child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                  child: Text(
                    widget.product.description,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: null,
                  ),
                ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
