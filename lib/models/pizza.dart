class PizzaItem {
  final int id,price;
  final String title,time;

  PizzaItem({required this.id, required this.price, required this.title, required this.time});
}

List<PizzaItem> pizzas=[
  PizzaItem(id: 1, price: 50, title: 'Napole Pizza', time:'16 min'),
  PizzaItem(id: 1, price: 40, title: 'Chicken Pizza', time:'16 min'),
  PizzaItem(id: 1, price: 30, title: 'Chirstmas Pizza', time:'16 min'),
  PizzaItem(id: 1, price: 20, title: 'Beer Pizza', time:'16 min'),
  PizzaItem(id: 1, price: 26, title: 'Salad Pizza', time:'16 min')
];