/*
1. Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками
*/

enum Sizes {
  case small, regular, large
}

enum Positions {
  case cassier, cooker
}

protocol Food {
  var cost: Double {get}
  var size: Sizes {get}
}

struct Worker {
  var name: String
  var salary: Double
  var position: Positions
}

class Pizzeria {
  private var food: [Food]
  private var workers: [Worker]

  init (food: [Food]) {
    self.food = food
  }

  func addFood(food: Food) {
    self.food.append(food)
  }
}

/*
2. Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе
*/

class Table {
  var seats: Int

  init(seats: Int) {
    self.seats = seats
  }

  func isAvailable(guests: Int) -> Bool {
    return seats >= guests
  }
}

/*
3. Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра
*/

class Pizzeria {
  private var food: [Food]
  private var workers: [Worker]
  private var tables: [Table] = []

  init (food: [Food], workers: [Worker]) {
    self.food = food
    self.workers = workers
    var table: Table
    for _ in 0...4 {
      table = Table(seats: Int.random(in: 2...8))
      table.pizeria = self
                    self.tables.append(table)
    }
  }

  func addFood(food: Food) {
    self.food.append(food)
  }
}

class Table {
  var seats: Int
  weak var pizeria: Pizzeria?

  init(seats: Int) {
    self.seats = seats
  }

  func isAvailable(guests: Int) -> Bool {
    return seats >= guests
  }
}




