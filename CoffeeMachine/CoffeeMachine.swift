//
//  CoffeeMachine.swift
//  CoffeeMachine
//
//  Created by Dasha Chastokolenko on 2/9/19.
//  Copyright © 2019 Dasha Chastokolenko. All rights reserved.
//

import UIKit

class CoffeeMachine: NSObject {
        
        //PROPERTIES
        
        
        private let volumeOfWaterTube = 2000
        private let volumeOfMilkTube = 500
        var waterInTube = 0
        var milkInTube = 0
        var coffeeInFilter = 0
        
        
        func addWater() {
            waterInTube += 500
        }
        
        func addCoffee() {
            coffeeInFilter += 1
        }
        
        func addMilk() {
            milkInTube += 200
        }
        
        func makeAmericano() {
            if (waterInTube >= 500) && (coffeeInFilter) == 1 {
                print("Your coffee is ready")
            }
            else {
                if waterInTube < 500 {
                    print("Please, add water")
                }
                if coffeeInFilter == 0 {
                    print("Please, add coffee")
                }
            }
        }
}
