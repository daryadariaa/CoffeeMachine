//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Dasha Chastokolenko on 2/9/19.
//  Copyright © 2019 Dasha Chastokolenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let newCoffeeMachine = CoffeeMachine.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newCoffeeMachine.coffeeInFilter = 0
        newCoffeeMachine.milkInTube = 0
        newCoffeeMachine.waterInTube = 1000
        newCoffeeMachine.addCoffee()
        newCoffeeMachine.addMilk()
        newCoffeeMachine.makeAmericano()
    }
    
}

