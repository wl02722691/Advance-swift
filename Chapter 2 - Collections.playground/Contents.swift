import UIKit


// ----- map and filter
let numbers = [1,2,3,4,5,6,7,8,9,10]

// - bad solution
var evenSquares1: [Int] = []

for num in numbers {
    let square = num * num
    if square % 2 == 0  { evenSquares1.append(square)}
}

//print(evenSquares1)[4, 16, 36, 64, 100]

// - good solution
let evenSquares2 = numbers.map {$0 * $0}.filter{$0 % 2 == 0}
//print(evenSquares2)[4, 16, 36, 64, 100]

// ----- Create an array of every possible pairing

let suits = ["♡","♢","♤","♧"]
let ranks = ["J","Q","K","A"]

var allPairing1: [(String, String)] = []

// - bad solution
for suit in suits {
    for rank in ranks {
        let pairing = (suit, rank)
        allPairing1.append(pairing)
    }
}

// - good solution
let allPairing2 = suits.flatMap { suit in
    ranks.map{ rank in (suit,rank)}
}

// ----- Create an array of every possible pairing
let oldArea = [
    "name"  : "Alice",
    "now"   : "sleepy",
    "firend": "Crystal"
]

let newArea = [
    "now"   : "sleepy",
    "firend": "Nia",
    "eat"   : "food"
]

let mergeArea = oldArea.merging(newArea, uniquingKeysWith: {$1})
//print(mergeArea)
//["now": "sleepy", "firend": "Nia", "eat": "food", "name": "Alice"]


// ----- Set

var allClassmate: Set = ["Alice", "Crystal", "Nia", "Luke", "Annie"]
let cutie: Set = ["Alice", "Nia", "Yuyu"]

// Subtraction
let allClassmateWithoutCutie = allClassmate.subtracting(cutie)
//print(allClassmateWithoutCutie) ["Luke", "Crystal", "Annie"]

// Intersection
let cutieIsClassmate = allClassmate.intersection(cutie)
//print(cutieIsClassmate) ["Nia", "Alice"]

// Union
let allPeople = allClassmate.union(cutie)
p//rint(allPeople)["Yuyu", "Luke", "Crystal", "Alice", "Nia", "Annie"]

