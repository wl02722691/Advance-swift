import UIKit

var str = "Hello, playground"

//for char in str {
//    print(char)
//}

var iterator = str.makeIterator()

while let character = iterator.next() {
    print(character)
}
