import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Model/coffee_model.dart';

class CoffeeDetailScreen extends StatefulWidget {
  final Coffee coffee;
  const CoffeeDetailScreen({super.key, required this.coffee});

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  bool isFavorite = true;
  bool switchValue = false;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: widget.coffee.color,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // for menu and cart icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 35,
                  ),
                  const Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: size.height * 0.62,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // for image
                  Positioned(
                    left: 50,
                    top: 50,
                    child: Hero(
                      tag: widget.coffee.image,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          widget.coffee.image,
                          height: 250,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(30),
                        height: size.height * 0.6,
                        child: Column(
                          children: [
                            // for back and favorite button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 40,
                                    color: widget.coffee.color,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  icon: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: widget.coffee.color,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                            // for name
                            const SizedBox(height: 30),
                            Text(
                              widget.coffee.name,
                              style: const TextStyle(
                                height: 0.8,
                                fontSize: 45,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            // for rating
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RatingBar.builder(
                                  initialRating: widget.coffee.star,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 25,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    setState(() {
                                      widget.coffee.star = rating;
                                    });
                                  },
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  widget.coffee.star.toString(),
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: size.height * 0.06),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // for price
                                Text(
                                  "\$${widget.coffee.price}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 35),
                                ),

                                // for no fo quantity
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: widget.coffee.color,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (quantity > 1) {
                                              quantity -= 1;
                                            }
                                          });
                                        },
                                        child: const Center(
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        quantity.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: widget.coffee.color,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity += 1;
                                          });
                                        },
                                        child: const Center(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: size.height * 0.04),
                            // for switch button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "L",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                CupertinoSwitch(
                                    value: switchValue,
                                    activeTrackColor: widget.coffee.color,
                                    onChanged: (value) {
                                      setState(() {
                                        switchValue = value;
                                      });
                                    }),
                                const SizedBox(width: 10),
                                const Text(
                                  "S",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: size.height * 0.055),
                            Container(
                              height: 70,
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                color: widget.coffee.color,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:const Center(
                                child: Text(
                                  "Order Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
