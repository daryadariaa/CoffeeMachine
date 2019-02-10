//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Dasha Chastokolenko on 2/9/19.
//  Copyright © 2019 Dasha Chastokolenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var americanoButton: UIButton!
    
    
    @IBOutlet weak var coffeeBeans: UIButton!
    
    
    @IBAction func makeAmericano(_ sender: UIButton) {
        newCoffeeMachine.makeAmericano()
        let resultText = newCoffeeMachine.makeAmericano()
        stateOfMachine.text = resultText
        if resultText == "Your ☕️ is ready, enjoy!" {
            newCoffeeMachine.coffeeInFilter -= 1
            newCoffeeMachine.waterInTube -= 200
        }
    }
    
    @IBAction func makeCappuccino(_ sender: UIButton) {
        newCoffeeMachine.makeCappuccino()
        let resultText = newCoffeeMachine.makeCappuccino()
        stateOfMachine.text = resultText
        if resultText == "Your cappuccino is ready, enjoy!" {
            newCoffeeMachine.coffeeInFilter -= 1
            newCoffeeMachine.milkInTube -= 200
        }
    }
    
    @IBAction func makeLatte(_ sender: UIButton) {
        newCoffeeMachine.makeLatte()
        let resultText = newCoffeeMachine.makeLatte()
        stateOfMachine.text = resultText
        if resultText == "Your latte is ready, enjoy!" {
            newCoffeeMachine.coffeeInFilter -= 1
            newCoffeeMachine.milkInTube -= 400
        }
    }
    
    
    
    @IBAction func addWater(_ sender: UIButton) {
        newCoffeeMachine.addWater()
    }
    
    
    @IBAction func addMolk(_ sender: UIButton) {
        newCoffeeMachine.addMilk()
    }
    
    
    @IBAction func add2Milk(_ sender: UIButton) {
        newCoffeeMachine.add2Milk()
    }
    
    @IBAction func addCoffee(_ sender: UIButton) {
        newCoffeeMachine.addCoffee()
    }
    
    
    @IBOutlet weak var stateOfMachine: UILabel!
    
    
    var newCoffeeMachine = CoffeeMachine.init(waterInTube: 1000, milkInTube: 0, coffeeInFilter: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        americanoImage()
        coffeeBeansImage()
    }
    
    func americanoImage() {
        let image = UIImage(named: "Americano")
        americanoButton.setBackgroundImage(image, for: .normal)
    }
    
    func coffeeBeansImage() {
        let image = UIImage(named: "Beans")
        coffeeBeans.setBackgroundImage(image, for: .normal)
    }
    
}

