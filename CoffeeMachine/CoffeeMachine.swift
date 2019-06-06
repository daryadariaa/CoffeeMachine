//
//  CoffeeMachine.swift
//  CoffeeMachine
//
//  Created by Dasha Chastokolenko on 2/9/19.
//  Copyright © 2019 Dasha Chastokolenko. All rights reserved.
//

import UIKit

class CoffeeMachine: NSObject {
    
    //PROPERTIES INITIALIZATION
    
    var waterInTube: Int
    var milkInTube: Int
    var coffeeInFilter: Int
    init(waterInTube: Int, milkInTube: Int, coffeeInFilter: Int) {
        self.waterInTube = waterInTube
        self.milkInTube = milkInTube
        self.coffeeInFilter = coffeeInFilter
    }
    
    //ACTIONS
    
    
    func addWater() {
        waterInTube += 500
    }
    
    func addCoffee() {
        coffeeInFilter += 1
    }
    
    func addMilk() {
        milkInTube += 200
    }
    
    func add2Milk() {
         milkInTube += 400
    }
    
    func makeAmericano() -> String {
        var resultMessage: String = ""
        if (waterInTube >= 200) && (coffeeInFilter) >= 1 {
            resultMessage = "Your ☕️ is ready, enjoy!"
        }
        else {
            if waterInTube < 200 {
                resultMessage = "Please, add some water"
            }
            if coffeeInFilter == 0 {
                resultMessage = "Please, add some coffee"
            }
        }
        return resultMessage
    }
    
    func makeCappuccino() -> String {
        var resultMessage: String = ""
        if (milkInTube >= 200) && (coffeeInFilter) >= 1 {
            resultMessage = "Your cappuccino is ready, enjoy!"
        }
        else {
            if milkInTube < 200 {
                resultMessage = "Please, add some milk"
            }
            if coffeeInFilter == 0 {
                resultMessage = "Please, add some coffee"
            }
        }
        return resultMessage
    }
    
    func makeLatte() -> String {
        var resultMessage: String = ""
        if (milkInTube >= 400) && (coffeeInFilter) >= 1 {
            resultMessage = "Your latte is ready, enjoy!"
        }
        else {
            if milkInTube < 400 {
                resultMessage = "Please, add double milk"
            }
            if coffeeInFilter == 0 {
                resultMessage = "Please, add some coffee"
            }
        }
        return resultMessage
    }
}
