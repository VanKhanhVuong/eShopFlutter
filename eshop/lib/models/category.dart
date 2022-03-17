import 'package:flutter/material.dart';

class Category {
  final int id;
  final String content;
  final Color color;

  const Category({
    this.id,
    this.content,
    this.color
  });

  // required là bắt buộc ng dùng nhập NOT NULL 
}

List<Category> categoryList = [
  Category(id: 1, content: 'TV', color: Colors.deepOrange),
  Category(id: 2, content: 'Tủ Lạnh', color: Colors.teal),
  Category(id: 3, content: 'Máy Giặt', color: Colors.cyanAccent),
  Category(id: 4, content: 'Laptop', color: Colors.pink),
  Category(id: 5, content: 'Smart Phone', color: Colors.green),
  Category(id: 6, content: 'Nồi cơm điện', color: Colors.yellow),
  Category(id: 7, content: 'Smart Watch', color: Colors.blueAccent),
  Category(id: 8, content: 'Tai nghe', color: Colors.redAccent),
  Category(id: 9, content: 'Bàn Phím', color: Colors.greenAccent),
  Category(id: 10, content: 'Chuột máy tính', color: Colors.tealAccent),
  Category(id: 11, content: 'Quạt', color: Colors.orange),
  Category(id: 12, content: 'Ấm đun siêu tốc', color: Colors.cyanAccent),
  Category(id: 13, content: 'Bếp ga', color: Colors.deepOrange),
  Category(id: 14, content: 'Bếp điện', color: Colors.teal),
];