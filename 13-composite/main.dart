import 'classes/menu.dart';
import 'classes/menu_item.dart';

void main() {
  print('-- Building the diner menu --');
  final pancakeHouseMenu = Menu('Pancake House Menu');
  pancakeHouseMenu.add(MenuItem('K&B\'s Pancake Breakfast', 2.99));
  pancakeHouseMenu.add(MenuItem('Waffles', 3.59));

  final dinerMenu = Menu('Diner Menu');
  dinerMenu.add(MenuItem('Vegetarian BLT', 2.99));
  dinerMenu.add(MenuItem('Soup of the day', 3.29));

  final dessertMenu = Menu('Dessert Menu');
  dessertMenu.add(MenuItem('Apple Pie', 1.59));
  dessertMenu.add(MenuItem('Cheesecake', 1.99));
  dinerMenu.add(dessertMenu);

  final allMenus = Menu('All Menus');
  allMenus.add(pancakeHouseMenu);
  allMenus.add(dinerMenu);

  print('');
  print('-- Printing the whole tree with a single call --');
  allMenus.display('');

  print('');
  print('-- Removing the dessert submenu, then printing again --');
  dinerMenu.remove(dessertMenu);
  allMenus.display('');
}
