class FriendData {
  String name;
  String nickname;
  String age;
  String hometown;
  String food;
  String activity;
  String image;

  FriendData({
    required this.name,
    required this.nickname,
    required this.age,
    required this.hometown,
    required this.food,
    required this.activity,
    required this.image,
  });
}

// ลิสต์ข้อมูลเพื่อนสำหรับแสดงผล
List<FriendData> friends = [
  FriendData(
    name: "กิตติศักดิ์ มั่นคง",
    nickname: "นนท์",
    age: "21 ปี",
    hometown: "เชียงใหม่",
    food: "สุกี้ผักรวม, ชาบู",
    activity: "เล่นเกม, เตะฟุตบอล, ฟังเพลง",
    image: "assets/images/friend1.jpg",
  ),
  FriendData(
    name: "ณิชารีย์ สุขเสริฐ",
    nickname: "มายด์",
    age: "20 ปี",
    hometown: "ชลบุรี",
    food: "สลัดผัก, ยำแซลมอน",
    activity: "เล่นโยคะ, ถ่ายรูป, คาเฟ่",
    image: "assets/images/friend2.jpg",
  ),
  FriendData(
    name: "ธนกฤต วงศ์สว่าง",
    nickname: "บอส",
    age: "22 ปี",
    hometown: "ขอนแก่น",
    food: "สเต๊กเนื้อ, บาร์บีคิว",
    activity: "ฟิตเนส, ขี่บิ๊กไบค์, ดูหนัง",
    image: "assets/images/friend3.jpg",
  ),
  FriendData(
    name: "พีรพงษ์ ศรีสุวรรณ",
    nickname: "อาร์ม",
    age: "21 ปี",
    hometown: "กรุงเทพฯ",
    food: "แฮมเบอร์เกอร์, พิซซ่า",
    activity: "เขียนโค้ด, เล่นกีตาร์, สตรีมเกม",
    image: "assets/images/friend4.jpg",
  ),
];