import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamla_lagbe/app/getx_practice/test_app/product_details_model.dart';


class ProductDetailsScreen extends StatelessWidget {
  final ProductDetailsData product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name ?? 'Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://apcombd.com/public/${product.thumbnailImage}',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                product.name ?? 'No Name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                product.mainPrice ?? 'No Price',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(height: 16),
              Text(
                product.description ?? 'No Description',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              if (product.photos != null && product.photos!.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Photos:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: product.photos!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Image.network(
                              'https://apcombd.com/public/${product.photos![index].path}',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 16),
              // Add more product details here if needed
            ],
          ),
        ),
      ),
    );
  }
}
