import 'classes/diner_menu.dart';
import 'classes/pancake_house_menu.dart';
import 'classes/waitress.dart';

void main() {
  final pancakeHouseMenu = PancakeHouseMenu();
  pancakeHouseMenu.addItem('K&B\'s Pancake Breakfast',
      'Pancakes with scrambled eggs and toast', true, 2.99);
  pancakeHouseMenu.addItem(
      'Regular Pancake Breakfast', 'Pancakes with fried eggs and sausage', false, 2.99);
  pancakeHouseMenu.addItem('Waffles', 'Waffles with your choice of blueberries or strawberries',
      true, 3.59);

  final dinerMenu = DinerMenu();
  dinerMenu.addItem('Vegetarian BLT', 'Fakin\' Bacon with lettuce & tomato on wheat', true, 2.99);
  dinerMenu.addItem('BLT', 'Bacon with lettuce & tomato on whole wheat', false, 2.99);
  dinerMenu.addItem('Soup of the day', 'Soup of the day, with a side of potato salad', false, 3.29);
  dinerMenu.addItem('Hotdog', 'A hot dog, with sauerkraut, relish, onions, topped with cheese',
      false, 3.05);

  final waitress = Waitress();

  print('-- Pancake House menu (backed by a growable List) --');
  waitress.printMenu(pancakeHouseMenu);

  print('');
  print('-- Diner menu (backed by a fixed-size array) --');
  waitress.printMenu(dinerMenu);

  print('');
  print('-- Vegetarian items across BOTH menus, same waitress code --');
  waitress.printVegetarianMenu(pancakeHouseMenu);
  waitress.printVegetarianMenu(dinerMenu);
}
