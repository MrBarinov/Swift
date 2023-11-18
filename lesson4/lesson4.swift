/*
1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
*/

enum PizzaType {
  case pepperoni, mushroom, hawaiian, vegetarian, cheezy
}

/*
2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
*/

struct Pizza {
  enum PizzaType {
    case pepperoni, mushroom, hawaiian, vegetarian, cheezy
  }
  enum doughType {
    case tradition, thin
  }
  enum toppings {
    case pepperoni, tomato, cheese, mushroom, olives, peppers, ham, bacon
  }

  var price: Double
  var pizzaType: PizzaType
  var doughType: doughType
  var toppings: [toppings]
}

/*
3. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
*/

class Pizzeria {
  private var pizzas: [Pizza] = []

  init (pizzas: [Pizza]) {
    self.pizzas = pizzas
  }
}

/*
4. Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
*/

class Pizzeria {
  private var pizzas: [Pizza] = []

  init (pizzas: [Pizza]) {
    self.pizzas = pizzas
  }

  func addPizza(pizza: Pizza) {
    self.pizzas.append(pizza)
  }

  func getPizzas() -> [Pizza] {
    return self.pizzas
  }
}

/*
5. Создать экземпляр класса пиццерии и добавить в него несколько пицц.
*/

var piz = Pizzeria(pizzas: [])
piz.addPizza(pizza: Pizza(
                   price: 50, 
                   pizzaType: .pepperoni, 
                   doughType: .tradition, 
                   toppings: [.pepperoni, .tomato, .cheese]
))
piz.addPizza(pizza: Pizza(
                   price: 75, 
                   pizzaType: .hawaiian, 
                   doughType: .tradition, 
                   toppings: [.cheese]
))
piz.addPizza(pizza: Pizza(
                   price: 100, 
                   pizzaType: .cheezy, 
                   doughType: .thin, 
                   toppings: []
))
