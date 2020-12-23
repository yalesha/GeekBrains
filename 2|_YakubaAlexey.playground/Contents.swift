import UIKit
import Foundation

//MARK:-1. Написать функцию, которая определяет, четное число или нет

var numberArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for sorting in numberArray{
    if sorting % 2 == 0 {
        print("\(sorting) четное число")
    } else {
        print("\(sorting) нечетное число")
    }
}

//MARK:-2. Написать функцию, которая определит делится ли число без остатка на 3.

for sortingThree in numberArray{
    if sortingThree % 3 == 0 {
        print("\(sortingThree) делится на 3 без остатка")
    } else {
    }
}

//MARK:-3. Создать возврастающий массив из 100 чисел.

var hundred: [Int] = []
for i in 1...99{
    hundred.append(i)
}
print(hundred)


//MARK:-4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for value in hundred {
    if (value % 3) != 0 {
    hundred.remove(at: hundred.firstIndex(of: value)!)
    }
}
print(hundred)


//MARK:-5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibonacci(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacci(100))



