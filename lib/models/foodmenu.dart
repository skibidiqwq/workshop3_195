// 1. Enhanced Enum เก็บ Path รูปภาพ
enum Foodpic {
  menu1(image: "assets/images/menu1.png"),
  menu2(image: "assets/images/menu2.png"),
  menu3(image: "assets/images/menu3.png"),
  menu4(image: "assets/images/menu4.png"),
  menu5(image: "assets/images/menu5.png"),
  menu6(image: "assets/images/menu6.png"),
  menu7(image: "assets/images/menu7.png");

  const Foodpic({required this.image});
  final String image;
}

// 2. Class ข้อมูลอาหาร
class FoodMenu {
  String name;
  String type;
  String component;
  int price;
  Foodpic foodpic;

  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic,
  });
}

// 3. List ข้อมูลรายการอาหาร
List<FoodMenu> emp = [
  FoodMenu(
    name: "สุกี้ผักรวม",
    type: "ต้ม",
    component: "ไข่ไก่, เกี๊ยวกุ้ง, ปูอัด, เบคอน, ผักสด",
    price: 299,
    foodpic: Foodpic.menu1,
  ),
  FoodMenu(
    name: "สลัดผัก",
    type: "สุขภาพ",
    component: "แครอท, มะเขือเทศ, ผักรวม",
    price: 159,
    foodpic: Foodpic.menu2,
  ),
  FoodMenu(
    name: "สเต๊กเนื้อ",
    type: "สเต๊ก",
    component: "เนื้อวัว, มันฝรั่งทอด",
    price: 389,
    foodpic: Foodpic.menu3,
  ),
  FoodMenu(
    name: "แฮมเบอร์เกอร์",
    type: "ฟาสต์ฟู้ด",
    component: "ขนมปัง, หมูสับ, ชีส",
    price: 189,
    foodpic: Foodpic.menu4,
  ),
];