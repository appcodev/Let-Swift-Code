//
//  main.swift
//  BeyondClass-Swift
//
//  Created by Chalermchon Samana on 6/6/14.
//  Copyright (c) 2014 Onzondev Innovation Co., Ltd. All rights reserved.
//

import Foundation

println("Beyond Class!")


//structures in swift
//การสร้าง struct
//struct MyPoint {
//    var x, y: Double
//    init(x:Double, y:Double){
//        self.x = x
//        self.y = y
//    }
//}
//
//struct MySize {
//    var width, height: Double
//}

//struct MyRect {
//    var origin: MyPoint
//    var size0: MySize
//    var area: Double {
//        return size.width*size.height
//    }

//    init(){
//        self.origin = MyPoint(x:0, y:0)
//        self.size0 = MySize(width:0, height:0)
//        //area = self.size.width * self.size.height
//    }
//
//
//    //message of structure
//    func isBiggerThanRect(other: MyRect) -> Bool {
//        return self.area > other.area
//    }
//}

//var p = MyPoint(x:0.0, y:0.0)
//println(p.x,p.y)


//class MyWindow {
//    var frame: MyRect
//    
//    init(){
//        
//    }
//}

/*
//Stucture กับ Class ต่างกันอย่างไร
1. Structure ไม่สามารถมีการสืบทอดกับ Structure อื่นได้เหมือน Class
2. การเปลี่ยนแปลงค่า object โดยที่ 
    object ของ Structure จะเปลี่ยนแปลงค่าโดยการ pass by value (ส่งไปแต่ค่า เปลี่ยนแปลงเฉพาะค่า ส่วนใหญ่จะเกี่ยวกับตัวเลข)
    object ของ Class จะเปลี่ยนแปลงค่าแบบ pass by reference (อ้างอิงตำแหน่งของหน่วยความจำที่สร้างออฟเจ็คนั้นๆ)
*/

//Constant and Variables: Reference Types
/*
    //สร้าง frame ขึ้นมาอันนึง ละไว้นะ
    //สร้าง window
    let window = Window(frame: frame)

    window.title = "Hello!"
    //อันนี้เราสามารถเปลี่ยนค่าได้ ถึงแม้ว่า window ของเราจะประกาศเป็น constant ก็ตาม
    //แต่ เราไม่สามารถเปลี่ยนแปลงการอ้างอิงตัว window นี้ได้ เพราะเราประกาศเป็น constant นะ
    //
    window = Window(frame: frame2)
    //error: Cannot mutate a constant!
*/

//Constant and Variables: Value Types
var point1 = Point(v: 0, h: 0)
point1.v = 50
//point1 v=50 h=0 ... OK

let point2 = Point(v:0, h:0)
//point2.v = 50  // X
//error: ไม่สามารถเปลี่ยนแปลงค่าของ constant ได้นะ


//Mutating a Structure
struct MyMuPoint {
    var x, y: Double
    
    //การสร้าง structure หากไม่มี ฟังก์ชั่น init แล้วจะต้องใส่พารามิเตอร์ทุกตัวที่เป็น property ของ struct ตัวนั้นให้หมด
    //แต่หากมี init() ในฟังก์ชั่นเราจะต้องเรียกใช้ self.x self.y (เรียกใช้ property ด้วย) เพื่อกำหนดค่าเริ่มต้นด้วย
    init(){
        self.x = 0
        self.y = 0
    }
    
    init(x:Double, y:Double){
        self.x = x
        self.y = y
    }
    
    //หากต้องการมี message ใน struct ที่ทำการเปลี่ยนแปลงค่าของ property จำเป็นต้องใส่คีย์เวิร์ด mutating ไว้ด้านหน้าด้วย
    mutating func moveToRightBy(dx: Double) {
        x += dx
    }
}

var p1 = MyMuPoint(x:20, y:10)
println("1. p1 x:\(p1.x) y:\(p1.y)")
p1.x = 40
p1.y = 50
println("2. p1 x:\(p1.x) y:\(p1.y)")
p1.x += 20
println("3. p1 x:\(p1.x) y:\(p1.y)")
p1.moveToRightBy(10)
println("4. p1 x:\(p1.x) y:\(p1.y)")

let p2 = MyMuPoint()
//p2.x = 80
//error: can't assign to 'x' in 'p2'

//p2.moveToRightBy(20)
//Error: Immutable value of type 'MyMuPoint' only has mutating members named 'moveToRigthBy'
//จะต้องเป็นตัวแปร MyMuPoint แบบเปลี่ยนแปลงค่าได้ (var) เท่านั้นจึงจะสามารถเรียกใช้งาน 'moveToRigthBy' ได้


//Enumeration: Raw Values
//enum แบบกำหนดค่า
enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
    //Raw Values        2      3      4      5       6       7        8
    
    /*
    case Mercury = 11, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
    //Raw Values        12      13    14      15      16      17       18
    */
}

let earthNum = Planet.Earth.toRaw()
println(earthNum)
//3

enum ControlCharacter: Character{
    case Tab = "\t"
    case Linefeed = "\n"
    case CarriageReturn = "\r"
}
println("Go to Page\(ControlCharacter.Tab.toRaw())Let Swift\(ControlCharacter.Linefeed.toRaw())to Learn and Share about Swift Programming\(ControlCharacter.CarriageReturn.toRaw()):)")
/*
Go to Page	Let Swift
to Learn and Share about Swift Programming
:)
//tab จะไม่แสดงผลบน console แต่เมื่อก็อปปี้มาลงแล้วจะแสดงผลตามปกติ
*/

//การประกาศ enum นั้นสามารถประกาศได้โดยใส่ชื่อ enum ของเราและใส่ Type ไปด้วยว่าจะให้เป็นคลาสอะไร เช่น Int Character จะได้รู้ว่าสมาชิกจะเป็นชนิดอะไร

//การเรียกใช้ค่าของสมาชิกแต่ละตัวจะต้องเรียกใช้ผ่าน .toRaw()


//Enumeration
//enum ที่จะใช้แต่ชื่อสมาชิก
enum CompassPoint {
    case North, South, East, West
}

println("compass \(CompassPoint.North) \(CompassPoint.South) \(CompassPoint.East) \(CompassPoint.West)")
//compass (Enum Value) (Enum Value) (Enum Value) (Enum Value)
var direction = CompassPoint.North
//change
direction = .East
//ตอนนี้ตัวแปร direction นั้นรู้แล้วว่าตนเองเป็น CompassPoint ดังนั้นเวลาจะเปลี่ยนเป็นตัวอื่นก็ใช้แค่ .East ก็พอ
println("direction \(direction)")
//direction (Enum Value)

/*
let label = UILabel()
label.textAligment = .Right
//อย่าง ตัวอย่างของการเซ็ตการจัดเรียงแนวของ label จะใส่แค่ .Right เท่านั้น
*/

//Enumerations: Associaed Values
/*
enum ที่มีทั้งสมาชิกที่ไม่กำหนดค่าเข้าไป และสมาชิกที่สามารถกำหนดค่าได้
วืิธีการกำหนดค่า ให้เขียนชื่อสมาชิก(ชนิดของตัวแปรเข้าไป) เช่น Delayed(Int)

เราสามารถกำหนดค่าเริ่มต้นให้กับ enum ได้โดยใช้ฟังก์ชั่น init เช่นเดียวกับ class และ structure

เราสามารถมีตัวแปรที่เป็น property ของ enum ได้เช่นกัน ตัวอย่าง description: String
* การเรียกใช้สมาชิกที่มีพารามิเตอร์ จำเป็นจะต้องประกาศตัวแปรของพารามิเตอร์ก่อนใช้งานด้วย เช่น
case Delayed(let min):
    return "Delayed by \(min) minute"
//เราประกาศ let min เพื่อให้สอดคล้องกับตอนประกาศสมาชิก Delayed(Int)
*/
enum TrainStatus {
    case OnTime, Delayed(Int)
    
    init() {
        self = OnTime
    }
    
    var description: String {
        switch self{
            case OnTime:
                return "On Time"
            case Delayed(let minutes):
                return "Delayed by \(minutes) minute"
        }
    }
   
}

var trainStatus = TrainStatus()
println("train \(trainStatus.description)")
//train On Time
trainStatus = .Delayed(5)
println("tain!!! \(trainStatus.description)")
//tain!!! Delayed by 5 minute


//Nested Types
//เราสามารถประกาศ enum ให้เป็น property ของคลาสได้
class Train {
    
    enum Status {
        case OnTime, Delayed(Int)
        
        init(){
            self = OnTime
        }
        
        var description: String {
            switch self {
                case OnTime:
                    return "on Time"
                case Delayed(let min):
                    return "delay \(min) minute"
            }
        }
    }
    
    var status = Status()
    
}

let train = Train()
var tDesc = train.status.description
println("Train desc : \(tDesc)")
//Train desc : on Time

train.status = .Delayed(90)
println("Train desc : \(tDesc)")
//Train desc : on Time //สาเหตุที่ค่าของ status.description ไม่เปลี่ยนตามนั้นก็เพราะ enum เป็นการพาสค่าแบบ Value จึงจำเป็นต้องประกาศตัวแปรมารับค่าที่อัพเดทใหม่อีกครั้ง
var newTDesc = train.status.description
println("Train desc : \(newTDesc)")
//Train desc : delay 90 minute


//Extensions
//like Category in Objective-C
//ทำได้ทั้ง Class และ Struct

//Extentsion กับ structure
var pp1 = MyMuPoint(x:80, y:0)
pp1.moveToRightBy(10)
//pp1.moveToLeftTopBy(20, dy:10)
//**จะเรียกใช้ moveToLeftTopBy ไม่ได้เพราะยังไม่ได้ประกาศ
println("pp1 x \(pp1.x)")

extension MyMuPoint {
    mutating func moveToLeftTopBy(dx:Double, dy:Double) {
        x -= dx
        y -= dy
    }
    
}

pp1.moveToLeftTopBy(20, dy:10)
//**จะเรียกใช้ moveToLeftTopBy ได้เพราะประกาศเพิ่มในแบบ extension แล้ว
println("pp1 x \(pp1.x)")
//pp1 x 70.0

//จะประกาศตัวใหม่ก็ได้
var pp2 = MyMuPoint(x:10, y:20)
pp2.moveToLeftTopBy(5, dy:10)
println("pp2 x \(pp2.x)")
//pp2 x 5.0

//Extension กับ enum
var eCom1 = CompassPoint.North
//println("com1 \(eCom1) \(eCom1.desc)")
//** จะเรียกใช้ desc ไม่ได้เพราะไม่มีการประกาศอยู่ใน enum CompassPoint ก่อนหน้านี้

extension CompassPoint {
    var desc: String {
        switch self {
            case North:
                return "North"
            case South:
                return "South"
            case East:
                return "East"
            case West:
                return "West"
        }
    }
}

println("com1 \(eCom1) \(eCom1.desc)")
//com1 (Enum Value) North
//** สามารถเรียกใช้ได้ เนื่องจากเราประกาศตัวแปร desc เข้าไปแล้วใน extension


//Extension กับ Int
extension Int {
    func repetitions(task: ()->()) {
        for i in 0..self {
            task()
        }
    }
}

5.repetitions {
    println("Five!")
}
/*
Five!
Five!
Five!
Five!
Five!
*/

//A Non-Generic Stack Sturcture
struct IntStack {
    var elements = Int[]()
    
    mutating func push(element: Int) {
        elements.append(element)
    }
    
    mutating func pop() -> Int {
        return elements.removeLast()
    }
}
/*
จากตัวอย่าง เป็นการสร้าง struct ธรรมดาที่ทำตัวเป็น stack แต่ถ้าทำแบบนี้ จะใส่ค่า ได้เฉพาะชนิดตัวแปรนั้นๆ เท่านั้น
จึงจำเป็นต้องทำให้เป็นแบบ Generic ถึงจะสามารถใส่ค่าได้หลายๆ ชนิด
 */

//A Generic Stack Sturcture
struct Stack<T> {
    var elements = T[]()
    
    mutating func push(element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T {
        return elements.removeLast()
    }
    
    var description: String {
        return "elements: \(elements)"
    }
}

/*
 Generic จะใช้ <T> เป็นตัวบ่งบอกว่าสามารถใช้พารามิเตอร์ได้หลากหลายชนิด ที่เป็นชนืดเดียวกันเท่านั้น
*/

var intSck = Stack<Int>()
intSck.push(90)
intSck.push(22)
intSck.push(88)
println("int stack \(intSck.description)")
//int stack elements: [90, 22, 88]
let lastInt = intSck.pop()
println("int stack last \(lastInt)")
//int stack last 88
println("int stack \(intSck.description)")
//int stack elements: [90, 22]

var stringSck = Stack<String>()
stringSck.push("Hello")
stringSck.push("Let")
stringSck.push("Swift")
stringSck.push("Yaaa hoo")
//!! stringSck.push(59) // คนละชนิดกับที่ประกาศเอาไว้จึงไม่สามารถใช้ได้

println("stack \(stringSck.description)")
//stack elements: [Hello, Let, Swift, Yaaa hoo]

let lastString = stringSck.pop()
println("last \(lastString)")
println("stack \(stringSck.description)")
//last Yaaa hoo
//stack elements: [Hello, Let, Swift]

