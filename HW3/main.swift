//
//  main.swift
//  HW3
//
//  Created by Jarae on 20/1/23.
//

import Foundation
class Device{
    var model: String
    var year: Int
    var price: Int
    init(model: String, year: Int, price: Int) {
        self.model = model
        self.year = year
        self.price = price
    }
}
class Computer: Device{
    var buttonsNum: Int = 32
}
class Phone: Device{
    var simNum: String
    init(model: String, year: Int, price: Int, simNum: String) {
        self.simNum = simNum
        super.init(model: model, year: year, price: price)
    }
}
class repairService{
    var devices = [Device]()
    
    func showInfo(){
        var countC = 0, countP = 0
        for i in devices{
            if i is Computer{
                countC += 1
            }else if i is Phone{
                countP += 1
            }
        }
        print("на сервисе \(countC) ноутбуков и \(countP) смартфонов")
    }
}

var comp1 = Computer(model: "MacBook", year: 2018, price: 20000)
var comp2 = Computer(model: "Dell", year: 2018, price: 4000)
var comp3 = Computer(model: "Acer", year: 2018, price: 10000)

var phone1 = Phone(model: "iphone xr", year: 2016, price: 500, simNum: "+996111111111")
var phone2 = Phone(model: "redmi note 7", year: 2012, price: 100, simNum: "+996111111111")
var phone3 = Phone(model: "samsung a32", year: 2016, price: 500, simNum: "+996111111111")
var phone4 = Phone(model: "samsung z flip", year: 2016, price: 500, simNum: "+996111111111")

var dev = repairService()
dev.devices.append(comp1)
dev.devices.append(comp2)
dev.devices.append(comp3)
dev.devices.append(phone1)
dev.devices.append(phone2)
dev.devices.append(phone3)
dev.devices.append(phone4)

dev.showInfo()
