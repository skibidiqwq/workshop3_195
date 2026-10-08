import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/frienddata.dart'; // Import ไฟล์ FriendData

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  // ลิสต์สีพื้นหลังการ์ดแต่ละรายการ
  final List<Color> cardColors = [
    Colors.lightBlue.shade100,
    Colors.pink.shade100,
    Colors.lightGreen.shade100,
    Colors.orange.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: cardColors[index % cardColors.length], // สลับสีตาม index
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ฝั่งซ้าย: ข้อมูลรายละเอียดเพื่อน
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ชื่อ-นามสกุล : ${friends[index].name}",
                      style: GoogleFonts.itim(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                    Text(
                      "ชื่อเล่น : ${friends[index].nickname}",
                      style: GoogleFonts.itim(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      "อายุ : ${friends[index].age}",
                      style: GoogleFonts.itim(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      "บ้านเกิด : ${friends[index].hometown}",
                      style: GoogleFonts.itim(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      "อาหารที่ชอบ : ${friends[index].food}",
                      style: GoogleFonts.itim(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      "กิจกรรมที่ชอบ : ${friends[index].activity}",
                      style: GoogleFonts.itim(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              // ฝั่งขวา: รูปเพื่อน (ใส่ขอบมน)
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  friends[index].image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}