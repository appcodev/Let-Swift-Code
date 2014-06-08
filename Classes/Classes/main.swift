//
//  main.swift
//  Classes
//
//  Created by Chalermchon Samana on 6/6/14.
//  Copyright (c) 2014 Onzondev Innovation Co., Ltd. All rights reserved.
//

import Foundation

println("Classes!")


/*
you don't

x import "Vehicle.h"
x : Base Class as NSObject
*/

class Vehicle{
    //properties
    var numberOfWheels = 0
    //stored property
    //computed property
    var description: String{
        get{
            return "\(numberOfWheels) wheels"
        }
    }
    
    //method
    
    //initializers
    
    
}

//sub class
class Bicycle: Vehicle{
    init() {
        super.init()
        numberOfWheels = 2
    }
}

//sub class Car
class Car: Vehicle{
    var speed = 0.0
    init() {
        super.init()
        numberOfWheels = 4
    }
    
    //overriding a Property
    override var description: String {
        return super.description + ", \(speed) mph"
    }
}

class ParentsCar: Car{
    override var speed: Double {
        willSet {
            if  newValue > 65.0 {
                println("Careful now. spd \(speed) mph")
            }
        }
//        didSet {
//            
//        }
    }
}


let someVehicle = Vehicle()
//let someVehicle: Vehicle = Vehicle()
println(someVehicle.description)
//0 wheels

someVehicle.numberOfWheels = 5
println(someVehicle.description)
//5 wheels

let myBicycle = Bicycle()
println(myBicycle.description)
//2 wheels

let myCar = Car()
println(myCar.description)
//4 wheels, 0.0 mph

myCar.speed = 30.3
println(myCar.description)
//4 wheels, 30.3 mph

class Counter {
    var count = 0
    func incrementBy(amount: Int) {
        count += amount
    }
    func resetToCount(count:Int) {
        self.count = count
    }
}




