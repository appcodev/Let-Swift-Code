//
//  main.swift
//  BeyondTheBasic-Swift
//
//  Created by Chalermchon Samana on 6/6/14.
//  Copyright (c) 2014 Onzondev Innovation Co., Ltd. All rights reserved.
//

import Foundation

println("Beyond the Basic")

let numberOfLegs = ["ant":6, "snake":0, "cheetah":4, "big":1]
//ถ้าเราดึงค่าของ key ที่ไม่มีอยู่ใน dictionary จะเกิดอะไรขึ้น?
println(numberOfLegs["dog"])
//output nil

//Querying an Optional
let possibleLegCount: Int? = numberOfLegs["dogg"]
println(possibleLegCount)
//output nil

if  possibleLegCount == nil {
    println("Not found")
}else {
    let legCount: Int = possibleLegCount!
    println(legCount)
}

/////// ? และ ! คืออะไร ใช้อย่างไร
//ลดการเขียนโค้ดจากด้านบน
if possibleLegCount {
    let legCount = possibleLegCount!
    println(legCount)
}

//Unwrapping an Optional
if let legCount = possibleLegCount {
    println(legCount)
}


//IF Statement
var legCount = numberOfLegs["big"]
if legCount == 0 { //จะใช้แบบ if(legCount==0) ก็ได้
    println("It slithers and slides around")
}else {
    println("It walks")
}
//It walks


//More Complex If Statements
if legCount == 0 { //จะใช้แบบ if(legCount==0) ก็ได้
    println("It slithers and slides around")
}else if legCount == 1 {
    println("It hops")
}else {
    println("It walks")
}
//It hops


//Switch
switch legCount! {
    case 0:
        println("It slither and slides around")
    case "1":
        println("It hop 1")
        println("It hop 2")
        println("It hop 3")
        println("It hop 4")
    case 1:
        println("It hop 1 number")
        println("It hop 2 number")
        println("It hop 3 number")
    default:
        println("It walks")
}
/*
It hop 1 number
It hop 2 number
It hop 3 number
*/
//switch ต้องมี default ตลอดไม่ยังนั้นจะคอมไพล์ไม่ผ่าน error: switch muct be exhaustive [safe]
//switch สามารถเปรียบเทียบตัวแปรที่เป็น Object Class ก็ได้
//switch ใช้ กับจำนวนหรือ Object หลายๆ อันได้

var letter = "5K"
switch letter {
    case "1","0",0:
        println("member in 1 0 0")
    case "5","5K",5:
        println("member in 5 5K 5")
    default:
        println("not member")
}
//member in 5 5K 5

//Matching Value Range
let myScore = 49.0001

switch myScore {
    case 80.0...100.0:
        println("get A")
    case 70.0..80.0:
        println("get B")
    case 60.0..70.0:
        println("get C")
    case 50.0..60.0:
        println("get D")
    default:
        println("get E")
}
//49.0001 => get D
//49.0    => get E 
//** การอัพเดทของ Range อัพเดทเป็นตัวเลขจำนวนเต็ม เท่านั้น

//Function

func sayHello(){
    println("Hello")
}

//call
sayHello()
//Hello

func sayHello(name:String){
    println("Hello \(name)")
}

sayHello("Let Swift")
//Hello Let Swift

//Returning Values
func buildGreeting(name:String = "Let Swift") -> String {
    return "Hi! " + name
}
let greeting = buildGreeting()
let greet:String = buildGreeting(name:"Toa")//เวลาจะใส่พารามิเตอร์ ต้องใส่ชื่ออากูเมนลงไปด้วย
println("\(greeting) | \(greet)")
//Hi! Let Swift | Hi! Toa

//Tuples
//Tuples นี้สามารถเอามาเป็นค่าที่จะ return ออกไปได้ จะทำให้เราสามารถ return ออกไปได้หลายค่านั้นเอง
/*
(3.4,3.5,4.3)       //(Double, Double, Double)
(404,"Not Found")   //(Int, String)
(2,"banana",0.99)   //(Int, String, Double)
*/

//Returning Multiple Values
func refreshWebPage() -> (code:Int, message:String) {
    //...
    return (404,"Not Found")
}

//Decomposition a Tuples
//var (code,desc) = refreshWebPage()
var (code:Int,desc:String) = refreshWebPage()
println("-- \(code) \(desc)")
//-- 404 Not Found

//ประกาศตัวแปรมารับค่า ค่าที่ return จาก tuples จะต้องใส่ชื่อในตัวแปรด้วยจะได้เรียกใช้ผ่านชื่อนั้นได้
let status = refreshWebPage()
println("received \(status.code) \(status.message)")
//received 404 Not Found


//Tuple Decomposition for Enumeration
let numbers = ["A":5, "B":19, "C":90]
for (alphabet,number) in numbers {
    println("\(alphabet) ->> \(number)")
}
/*
output
C ->> 90
A ->> 5
B ->> 19
*/

//Closures
let greetingPrinter = {
    println("Let Swift!")
}

//Closures จะคล้ายกับการประกาศฟังก์ชั่น ดังนั้นเวลาเรียกใช้จึงเรียกเหมือนฟังก์ชั่น ไม่ใช่เรียกเป็นตัวแปร
/*
let greetingPrinter: ()->() = {

}

same

func greetingPrinter() -> (){

}

*/

greetingPrinter()
//Let Swift!

//Closures as Parameters
//การส่งค่า Closures ไปเป็นพารามิเตอร์ของฟังก์ชั่น
func repeat(count: Int, task: ()->()) {
    for i in 0..count {
        task()
    }
}

repeat(4,{
    println("Hello!!")
    });
/*
Hello!!
Hello!!
Hello!!
Hello!!
*/


