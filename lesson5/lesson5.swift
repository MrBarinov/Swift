/*
1. В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
*/

enum Sizes {
  case small, regular, large
}

protocol Food {
  var cost: Double {get}
  var size: Sizes {get}
}

struct Fries: Food {
  var cost: Double
  var size: Sizes
}

class Pizzeria {
  private var food: [Food]
  
  init (food: [Food]) {
    self.food = food
  }
}

/*
2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
*/

class Pizzeria {
  private var food: [Food]
  
  init (food: [Food]) {
    self.food = food
  }

  func addFood(food: Food) {
    self.food.append(food)
  }
}

/*
3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.
*/

protocol Lockable {
  func lock()
  func unlock()
}

/*
4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
*/

extension Pizzeria: Lockable {
  func lock() {
    print("Закрыто")
  }

  func unlock() {
    print("Открыто")
  }
}

/*
5. Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.
*/

func subtract<T: Numeric>(a: T, b: T) -> T {
  return a - b
}
