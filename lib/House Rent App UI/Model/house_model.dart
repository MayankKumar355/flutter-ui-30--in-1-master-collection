import 'package:flutter/cupertino.dart';

class HouseRoom {
  final String name;
  final String place;
  final String price;
  final String height;
  final String width;
  final String bath;
  final String type;
  final String rating;
  final String image;
  final Color color;
  HouseRoom({
    required this.bath,
    required this.height,
    required this.name,
    required this.place,
    required this.price,
    required this.type,
    required this.width,
    required this.rating,
    required this.image,
    required this.color
  });
}

List<HouseRoom> houseList = [
  HouseRoom(
    name: "Luxurious Single Family House",
    place: "Kathmandu, Nepal",
    price: "1250",
    bath: "2",
    height: "12.5",
    width: "18.5",
    type: "Family",
    rating: "4.5",
    image: "https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?w=600",
    color: const Color(0xff7aafff)
  ),
  HouseRoom(
    name: "Beautiful Studio Central Park Mall",
    place: "Surkhet, Nepal",
    price: "640",
    bath: "3",
    height: "22.5",
    width: "18.5",
    type: "Family",
    rating: "4.5",
    image: "https://images.unsplash.com/photo-1570129477492-45c003edd2be?w=600",
    color: const Color(0xff63bed8)
  ),
  HouseRoom(
    name: "Modern Scandinavian Apartment",
    place: "Surkhet Nepal",
    price: "300",
    bath: "1",
    height: "12.0",
    width: "20.0",
    type: "Family",
    rating: "4.0",
    image: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?w=600",
    color: const Color(0xffad85e6)
  ),
  HouseRoom(
    name: "2 BR Spacious",
    place: "Jakarta, Indonesia",
    price: "222",
    bath: "1",
    height: "10",
    width: "15",
    type: "Single",
    rating: "5.0",
    image: "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=600",
    color: const Color(0xff44aeb2)
  ),
  HouseRoom(
    name: "Senopati House",
    place: "Jakarta, Indonesia",
    price: "160",
    bath: "2",
    height: "12",
    width: "18",
    type: "Family",
    rating: "4.6",
    image: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=600",
    color: const Color(0xffad85e6)
  ),
  HouseRoom(
    name: "A Bohemian-style New Condo",
    place: "Mumbai, India",
    price: "230",
    bath: "2",
    height: "11.1",
    width: "22.2",
    type: "Single",
    rating: "4.0",
    image: "https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?w=600",
    color: const Color(0xff44aeb2)
  ),
  HouseRoom(
    name: "Cozy & Hygienic Sudirman",
    place: "Jakarta, Indonesia",
    price: "130",
    bath: "2",
    height: "10.5",
    width: "15.5",
    type: "Family",
    rating: "4.0",
    image: "https://images.unsplash.com/photo-1600566753376-12c8ab7fb75b?w=600",
    color: const Color(0xffad85e6)
  ),
  HouseRoom(
    name: "Offers HouseRoom Berjaya Times Square",
    place: "Kuala Lumpur, Malaysia",
    price: "290",
    bath: "1",
    height: "10.5",
    width: "14.5",
    type: "Single",
    rating: "5.0",
    image: "https://images.unsplash.com/photo-1600585154526-990dced4db0d?w=600",
    color: const Color(0xff7aafff)
  ),
  HouseRoom(
    name: "The Way House",
    place: "Pokhara, Nepal",
    price: "339",
    bath: "2",
    height: "12.5",
    width: "18.5",
    type: "Family",
    rating: "4.5",
    image: "https://images.unsplash.com/photo-1600573472591-ee6b68d14c68?w=600",
    color: const Color(0xff63bed8)
  ),
  HouseRoom(
    name: "Mega Family House",
    place: "Kathmandu, Nepal",
    price: "330",
    bath: "2",
    height: "12.5",
    width: "18.5",
    type: "Family",
    rating: "4.5",
    image: "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?w=600",
    color: const Color(0xff7aafff)
  ),
  HouseRoom(
    name: "ZB ATIL Zook Home 9",
    place: "Jakarta, India",
    price: "550",
    bath: "1",
    height: "13.5",
    width: "19.5",
    type: "Family",
    rating: "5.0",
    image: "https://images.unsplash.com/photo-1600585152220-90363fe7e115?w=600",
    color: const Color(0xff44aeb2)
  ),
];
