import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'category_controller.dart';
import 'product_details_screen.dart';

class CategoriesScreen extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Obx(() {
        if (categoryController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (categoryController.categoryList.isEmpty) {
          return Center(child: Text('No categories available.'));
        } else {
          return ListView.builder(
            itemCount: categoryController.categoryList.length,
            itemBuilder: (context, index) {
              final category = categoryController.categoryList[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category title
                    Text(
                      category.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Obx(() {
                      if (categoryController.productListMap[category.id] == null) {
                        return Center(child: CircularProgressIndicator());
                      } else if (categoryController.productListMap[category.id]!.isEmpty) {
                        return Center(child: Text('No products available.'));
                      } else {
                        return Container(
                          height: 150, // Set a fixed height for the horizontal list
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categoryController.productListMap[category.id]!.length,
                            itemBuilder: (context, productIndex) {
                              final product = categoryController.productListMap[category.id]![productIndex];
                              return GestureDetector(
                                onTap: () {
                                  // Get.to(() => ProductDetailsScreen(product: product));
                                },
                                child: Container(
                                  width: 150, // Set a fixed width for each product item
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        'https://apcombd.com/public/${product.thumbnailImage}',
                                        width: 150,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        product.name ?? 'No Name',
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        product.mainPrice ?? 'No Price',
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }
                    }),
                    SizedBox(height: 16), // Space between categories
                  ],
                ),
              );
            },
          );
        }
      }),
    );
  }
}
