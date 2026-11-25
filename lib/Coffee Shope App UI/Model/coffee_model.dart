import 'package:flutter/material.dart';

class Coffee {
  String name, image;
  Color color;
  double price;
  double star;
  Coffee({
    required this.color,
    required this.image,
    required this.name,
    required this.price,
    required this.star
  });
}

List<Coffee> coffeelist = [
  Coffee(
    name: "Espresso",
    image: "https://images.unsplash.com/photo-1510591509098-f4fdc6d0ff04?w=500",
    color: const Color(0xff65C5B2),
    price: 5,
    star: 4.4
  ),
  Coffee(
    name: "Cafe Mocha",
    image: "https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=500",
    color: const Color(0xffFFAEF2),
    price: 11,
    star: 4.9
  ),
  Coffee(
    name: "Caramel Macchiato",
    image: "https://images.unsplash.com/photo-1485808191679-5f86510681a2?w=500",
    color: const Color(0xffFF9839),
    price: 7,
    star: 4.0
  ),
  Coffee(
    name: "Turkish Coffee",
    image: "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=500",
    color: const Color(0xffB68456),
    price: 4,
    star: 4.3
  ),
  Coffee(
    name: "Cappuccino",
    image: "https://images.unsplash.com/photo-1534778101976-62847782c213?w=500",
    color: const Color(0xffE74343),
    price: 9,
    star: 3.4
  ),
  Coffee(
    name: "Affogato",
    image: "https://images.unsplash.com/photo-1517701604599-bb29b565090c?w=500",
    color: const Color(0xff56B670),
    price: 12,
    star: 4.0
  ),
  Coffee(
    name: "Cortado",
    image: "https://images.unsplash.com/photo-1541167760496-1628856ab772?w=500",
    color: const Color(0xff8D5FDC),
    price: 8,
    star: 5.0
  ),
  Coffee(
    name: "Cafe Cubano",
    image: "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=500",
    color: const Color(0xff5FBFDC),
    price: 15,
    star: 4.5
  ),
];
