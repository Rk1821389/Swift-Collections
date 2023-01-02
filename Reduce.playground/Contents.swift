import UIKit

//MARK: - CART EXAMPLE
struct Item {
    let name: String
    let price: Double
}

/*
 reduce is a higher-order function that is used to combine the elements of a sequence into a single value. It is defined in the Sequence protocol and is available for any type that conforms to this protocol, such as arrays, sets, and ranges.
 */


/*
 The reduce function takes two arguments: an initial value and a closure that combines an element of the sequence with the accumulated value. It applies the closure to the initial value and the first element of the sequence, then applies the closure to the result and the next element, and so on.
 */
struct Cart {
    
    private (set) var items: [Item] = []
    
    mutating func addItem(_ item: Item) {
        items.append(item)
    }
    
    var total: Double {
        items.reduce(0) { (value, item) -> Double in
           return value + item.price
        }
    }
}


var cart = Cart()

cart.addItem(Item(name: "Milk", price: 4.50))
cart.addItem(Item(name: "Bread", price: 2.50))
cart.addItem(Item(name: "Eggs", price: 12.50))

print(cart.total)

//MARK: - 2nd Way to use

let items = [2.0, 4.0, 5.0, 7.0]
let total = items.reduce(0, +)

print(total)
