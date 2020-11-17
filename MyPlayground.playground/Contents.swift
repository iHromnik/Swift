import UIKit
// 1. Решить квадратное уравнение.


let a = 1.0
let b = 6.0
let c = 8.0
let d = pow(b, 2)-4*a*c
let x1 = (-b + sqrt(d))/2*a
let x2 = (-b - sqrt(d))/2*a
print(x1, x2)


//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let e = 2.0
let f = 3.0
let s = e*f/2
let g = sqrt(pow(e, 2) + pow(f, 2))
let p = e+f+g
print("площадь", s, "периметр", p, "гипотенузу", g)

// 3 Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

let sum = 1000.0
let per = 10.0
let year = 5.0
let res1 = sum*(1 + per/100)
let res2 = res1*(1 + per/100)
let res3 = res2*(1 + per/100)
let res4 = res3*(1 + per/100)
let res5 = res4*(1 + per/100)
print(res5)
