/*
1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).
*/

enum Tea {
  case green
  case black
  case fruit
}

var tea_dict: [Tea: Double] = [
  .green: 50,
  .black: 100,
  .fruit: 150
]

var queue: [Tea] = [.black, .black, .green, .fruit, .fruit, .green, .black]

for (index, tea) in queue.enumerated() {
  print(index, tea, tea_dict[tea] ?? "Нет цены для чая")
}

/*
2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.
*/

var arr = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
var new_arr: [Int] = arr.compactMap{$0}.filter{$0 != 0 && $0 != 4}.sorted(by: <)

/*
3. Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.
*/

func make_arr(num: Int) -> [Int] {
  var res: [Int] = [1]
  for i in 0..<num-1 {
    res.append(res[i] * 2)
  }
  return res
}