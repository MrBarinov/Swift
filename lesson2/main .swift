//Пытался сделать параметр srok типа Int, но при компиляции получаю ошибку
//main.swift:2:36: error: cannot convert value of type 'Int' to expected argument type 'Float'
//    sum + (sum * (perc/100) / 12 * srok)
//                                   ^
//                                   Float( )
//Поясните, пожалуйста, с чем это связано и как исправить?

func vklad(sum: Float, perc: Float, srok: Float) -> Float {
    sum + (sum * (perc/100) / 12 * srok)
}

enum Pizza {
    case margarita
    case cheesy
    case hawaii
}

var p1 = Pizza.margarita
var p2 = Pizza.cheesy
var p3 = Pizza.hawaii


enum PizzaRaw: String {
    case margarita = "Margarita"
    case cheesy = "Four cheeses"
    case hawaii = "Hawaii"
}

var p4 = PizzaRaw.margarita.rawValue
var p5 = PizzaRaw.cheesy.rawValue
var p6 = PizzaRaw.hawaii.rawValue

