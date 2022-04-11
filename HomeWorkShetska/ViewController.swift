//
//  ViewController.swift
//  TMS_homeWork_EVG
//
//  Created by proofTRM on 9.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    //Задание №1
        let m = sum(a: 6, b: 12)
        let k = minus(a: 89, b: 22, c: 90)
        let v = multiply(a: 41.1, b: 22.5)
        let d = round(division(a: 41.1, b: 22.5))
        print ("Результат 4х параметров ",m,k,v,d)
        
//        Задание №2
        
        print("Сумма цифр числа n =",sumNumeric(n:4263))
        
//        Задание № 3
        
        print(stroki(a:"ыыа", b:"фвы"))
//        Задание 4 ( после задания 4 сл функции перестают работать , если задокументировать все работает хорошо)
        err(a: 5)
//      Задание 5
        
        print(voz(number: 4))
        
//        Задание 6
        print(numberFacktorial(n:6 ))
        
    }
   // задание №1 Универсальные ф-ции сложения,вычитания,умножения, деления
    func sum(a:Int,b:Int ) -> Int{
    let one = a + b
        return one
    }
    func sum ( a:Int,b:Int,c:Int) -> Int{
    let one = a + b + c
      return one
    }
    func sum (a: Double,b : Double) -> Double {
        let one = a + b
        return one
    }
    func minus(a:Int,b:Int ) -> Int{
    let one = a - b
        return one
    }
    func minus( a:Int,b:Int,c:Int) -> Int{
    let one = a - b - c
      return one
    }
    func minus (a: Double,b : Double) -> Double {
        let one = a - b
        return one
    }
    func multiply(a:Int,b:Int ) -> Int{
        let one = a * b
        return one
    }
    func multiply ( a:Int,b:Int,c:Int) -> Int{
    let one = a * b * c
      return one
    }
    func multiply (a: Double,b : Double) -> Double {
        let one = a * b
        return one
    }
    func mdivision (a:Int,b:Int ) -> Int{
        let one = a / b
        return one
    }
    func mdivision ( a:Int,b:Int,c:Int) -> Int{
    let one = a / b / c
      return one
    }
    func division (a: Double,b : Double) -> Double {
        let one = a / b
        return one
    }
// Задание №2 вычислить сумму цифр 4хзначного числа
    func sumNumeric ( n: Int) -> Int{
        var n = n
        var sum = 0
        while n > 0 {
            sum += n % 10
            n = n / 10
        }
        return sum
        }
//  Задание № 3 Сравнить строки
    func stroki (a:String, b:String){
        var a = a
         var b = b
        if a > b {
            print ("Строки не равны , больше строка",a)
        }
         else if  b > a {
            print ("Cтроки не равны , больше стока",b)
        }
        else {
            print ("Строки равны")
        }
        
    }
//  Задание 4( сломать Xcode)
    func err ( a: Int){
        var number = a
    while number > 1{
        number = number * 1
    }
             print (number)
    }
 
    
//    Задание 5 возведение в степень с дефолтным параметром
    
    func voz (number :Int, degree :Int = 7 ){
      var e = 1
      var numberInDegree = number
        while e < degree {
            numberInDegree = numberInDegree * number
            e += 1
        }
        print( "Результат возведения в степень",numberInDegree)
    }
    
// Задание 6 Вычислить факториал
    func numberFacktorial (n : Int) -> Int{
        if  n == 0 {
            return 1
        } else {
            return n * numberFacktorial(n: n-1)
        }
    }
    
    
}




