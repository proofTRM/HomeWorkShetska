import UIKit
// массів
var ageDogs :[(Int,String)] = [(5,"Spoty"),(3,"Baky"),(7,"Miky"),(2,"Chappy"),(4,"Morty")]
print("Исходный массив",ageDogs)

//способ №1

var ageSort = ageDogs
    .filter(){$0.0 % 2 == 0}
    .sorted(){$1.1 > $0.1}
    .map(){ $0.0 * $0.0 }
    

    print("Результат в одну строку",ageSort)

// способ 2
 
var ageSquare = ageDogs.map{ element in
    return element.0 * element.0
}
var ageSorted = ageDogs.sorted { element1, element2 in
    return element1.1 < element2.1
}
var  ageFilter = ageDogs.filter { element in
    return element.0 % 2 == 0
}
print("Возведение в квадрат",ageSquare)
print("Упорядочили по строкам(по возрастанию",ageSorted)
print("Отфильтровали только четные",ageFilter)

