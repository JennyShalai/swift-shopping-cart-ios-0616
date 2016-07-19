//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Flatiron School on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {

    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var result: Int = 0
        for item in self.items {
            result += item.priceInCents
        }
        return result
    }
    
    func addItem(item: Item) {
        self.items.append(item)
    }
    
    func removeItem(item: Item) {
        if let index = self.items.indexOf(item) {
            self.items.removeAtIndex(index)
        }
    }
    
    func itemsWithName(name: String) -> [Item] {
        var result: [Item] = []
        for item in self.items {
            if item.name == name {
                result.append(item)
            }
        }
        return result
    }
    
    func itemsWithMinimumPriceInCents(prise: Int) -> [Item] {
        var result: [Item] = []
        for item in self.items {
            if item.priceInCents >= prise {
                result.append(item)
            }
        }
        return result
    }
    
    func itemsWithMaximumPriceInCents(prise: Int) -> [Item] {
        var result: [Item] = []
        for item in self.items {
            if item.priceInCents <= prise {
                result.append(item)
            }
        }
        return result
    }
}


