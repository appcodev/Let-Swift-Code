//
//  main.swift
//  HelloSwift
//
//  Created by Chalermchon Samana on 6/6/14.
//  Copyright (c) 2014 Onzondev Innovation Co., Ltd. All rights reserved.
//

//import ไลบรารี่ Foundation เสมอ
import Foundation

//ปริ้นข้อความแบบธรรมดา ขึ้นบรรทัดใหม่
println("Hello, SWIFT!");
//println("hello, WWDC")
//ปริ้นแบบบรรทัดที่ต่อได้
//print("*****")

//ตัวแปร
var tools = 4
//println("tools number \(tools)")


//constants and variables
//type safe
var langaugeName: String = "Swift"
var version: Double = 1.0
let introduced: Int = 2012
let isAwesome: Bool = true //use true or false

//type inference
var langName = "Swift inf"  //inferred as String
var version2 = 2.0          //inferred as Double
let intro = 2014            //inferred as Int
let awesome = true          //inferred as Bool

langName += " Hello"
//awesome = false

//แสดงข้อความธรรมดา
println("Hello Let Swift.")
//แสดงค่าตัวแปรแบบไม่มีข้อความ
println(langName)
//แสดงค่าตัวแปรกับข้อความ
println("Hi! \(langName)")

println("update langName \(langName)")


//unicode name
let ℥ = 33
var 👮 = "ตำรวจ"
let เงินได้ = 900

println("\(℥) + \(👮) ได้ \(เงินได้)")
//33 + ตำรวจ ได้ 900

//String
var myString: String = "I away learn about programming technology."
let someString = "I appear to be a string"
//inferred to be of type String
println("Example Println & Print.")
println("my string = \(myString)")
println("some string = \(someString)")
println(someString)
print(myString)
print(" \(myString) \(someString)")
/*
my string = I away learn about programming technology.
some string = I appear to be a string
*/


let components = "~/Documents/Swift".pathComponents
var cmp = myString.pathComponents
println("\(components) | \(cmp)")//print array
println(cmp)
//out put : [~, Documents, Swift] | [I away learn about programming technology.]

//Character
var myChar: Character = "A"
var myChar2 = "🚗"
var myChar3 = "ก"
println("my character: \(myChar) \(myChar2) \(myChar3)")
//my character: A 🚗 ก


for ch:Character in "Let Swift 👳.💀.🙊.🙅.💔" {
    //ch = "B"
    print("\(ch) ")
}
//L e t   S w i f t   👳 . 💀 . 🙊 . 🙅 . 💔 🎀..🎀🎀..
/*
L
e
t

S
w
i
f
t

👳
.
💀
.
🙊
.
🙅
.
💔
*/

//Combining String and Characters
let ribbon1: Character = "🎀"
let ribbon2 = "..🎀🎀.."
let allRibbon = ribbon1 + ribbon2
println(allRibbon)
//output : 🎀..🎀🎀..

let instruction = "get " + ribbon1
println(instruction)
//output : get 🎀

var inst = "Hello Swift!!"
inst += ", How are you? "
inst += "Yes!!"
println(inst)
//Hello Swift!!, How are you? Yes!!

//Build complex string

//String Interpolation
let a = 3, b = 5
//want output : "3 times 5 is 15"
let rs = "\(a) times \(b) is \(a*b)"
println(rs)
//out put : 3 times 5 is 15

//String Mutabilly
/*
การประกาศตัวแปรด้วยคีเวิร์ด var จะทำให้ค่าในตัวแปรนั้นแก้ไขได้
แต่การประกาศด้วย let ค่าตัวแปรนั้นจะแก้ไขไม่ได้ (constant)
*/
var variableString = "Horse"
variableString += " and carriage"
println(variableString)
//Horse and carriage

//let constantString = "Highlander"
//constantString += "and another Highlander"
//error - constantString cannot be changed

//Array and Dictionary
let compPath = "~/a/b/s/ccc".pathComponents

//การประกาศค่า Array แบบอนุมานชนิดข้อมูล
var names = ["adaydesign","appcodev","Learn Objective-C","Let Swift"]
let myArray = [1,2,"Hello",8.901,"A"]
//array of string values
var numberOfLegs = ["ant":6, "snake":0, "cheetah":4]
//a dictionary with string Keys and Int values

println(names)
println(numberOfLegs)

//typed collections
//สมาชิกในอาเรย์ในจะเป็น ชนิดข้อมูลคนละอย่างกันก็ได้
/*class Bicycle{//สร้างเอาไว้ทดสอบเฉยๆ ครับ
    init(){}
}

var name2 = ["Toa","Toate",14.5,Bicycle()]
println(name2)
*/

//หากต้องการชัวร์ว่าเป็นชนิดเดียวกันหมด เราต้องใส่ชนิดเข้าไปด้วย
var name3: String[] = ["Toa","Toate","Toatez","ToateZooZoo"];
println(name3)
//[Toa, Toate, Toatez, ToateZooZoo]
let myNumber: Int[] = [12,22,444,55,32]
println(myNumber)
//[12, 22, 444, 55, 32]

let myMoney: Double[] = [110,220,330,440,550]
for money in myMoney {
    println("money \(money) half \(money*0.5) 1/3: \(money/3.0)")
}
/*
money 110.0 half 55.0 1/3: 36.6666666666667
money 220.0 half 110.0 1/3: 73.3333333333333
money 330.0 half 165.0 1/3: 110.0
money 440.0 half 220.0 1/3: 146.666666666667
money 550.0 half 275.0 1/3: 183.333333333333
*/

for index in 0..myMoney.count{
    println("> money \(myMoney[index])")
}
/*
> money 110.0
> money 220.0
> money 330.0
> money 440.0
> money 550.0
*/

var myMember = Array<String>()
//var myMember:String[] = ["Ant","Bat","Cat"]
myMember += ["Ant","Bat","Cat"]
myMember += ["Dog","Eagle","Flamingo"]
println(myMember)
//[Ant, Bat, Cat, Dog, Eagle, Flamingo]

myMember.append("Giraffe")
myMember.append("Horse")
println(myMember)
//[Ant, Bat, Cat, Dog, Eagle, Flamingo, Giraffe, Horse]


myMember[0] = "An Ant"
myMember[1] = "A Bat"
myMember[2] = "Two Cats"
println(myMember)
//[An Ant, A Bat, Two Cats, Dog, Eagle, Flamingo, Giraffe, Horse]

myMember[4...6] = ["Three Eagles","Five Flamingoes"]
println(myMember)
//[An Ant, A Bat, Two Cats, Dog, Three Eagles, Five Flamingoes, Horse]

myMember.removeAtIndex(0)
println(myMember)
//[A Bat, Two Cats, Dog, Three Eagles, Five Flamingoes, Horse]

myMember[2...5] = []
println(myMember)
//[A Bat, Two Cats]


//LOOP
//while loop
var sated = 1
func eatCake(num:Int){
    println("eat cake: \(num)")
}

while sated<5{
    eatCake(sated)
    sated++;
}
/*
output 
eat cake: 1
eat cake: 2
eat cake: 3
eat cake: 4
*/

//for loop **การอัพเดทค่าจะใช้ ++i นะครับ ลองใช้ i++ เช่นเดิมแล้วโปรแกรมฟ้องเออเรอ
for var i=0;i<=5;++i{
    eatCake(i)
}
/*
output
eat cake: 0
eat cake: 1
eat cake: 2
eat cake: 3
eat cake: 4
eat cake: 5
*/

//For-In: String and Characters
for ch2 in "i love 🏤💒🏡🏫🏪🚀✈️" {
    print("\(ch2) ")
}
println()
//output : i   l o v e   🏤 💒 🏡 🏫 🏪 🚀 ✈

//For-In: Ranges
for number in 1...5 {
    println("\(number) times 4 is \(number*4)")
}
/* Range แบบ n...m จะเป็น ตั้งแต่ n ถึง m
1 times 4 is 4
2 times 4 is 8
3 times 4 is 12
4 times 4 is 16
5 times 4 is 20
*/

for number in 1..5 {
    //number = 15
    println("\(number) times 4 is \(number*4)")
}
/* Range แบบ n..m จะเป็น ตั้งแต่ n ถึง m-1
1 times 4 is 4
2 times 4 is 8
3 times 4 is 12
4 times 4 is 16
*/

//For-In: Arrays
for name in ["Adaydesign","Appcodev","Learn Objective-C","Let Swift"] {
    print("\(name), ")
}
println()
//output : Adaydesign, Appcodev, Learn Objective-C, Let Swift, 

//For-In: Dictionary
var phoneBook = [   "toa":"099 0099",
                    "toate":"998 8800",
                    "toatez":"980 0099",
                    "toatezoozoo":"889 0988"]
for (name,phoneNumber) in phoneBook {
    //name = "OZ"
    println("\(name) call \(phoneNumber)")
}
/*
output
toa call 099 0099
toate call 998 8800
toatezoozoo call 889 0988
toatez call 980 0099
*/

//Modifying an Array
var shoppingList = ["Eggs","Milk"]
println(shoppingList[0])
//Eggs

shoppingList += "Water"
shoppingList += ["Donut","Bread"]
println(shoppingList)
//[Eggs, Milk, Water, Donut, Bread]

shoppingList[0] = "An Egg"
println(shoppingList)
//[An Egg, Milk, Water, Donut, Bread]

//modify in range
//จะทำให้เป็นการเปลี่ยนแปลงค่าสมาชิกหรือลบสมาชิกก็ได้
shoppingList[1...4] = ["Gold"]
println(shoppingList)
//[An Egg, Gold]

//Modifying a Dictionary
var legs = ["ant":6, "snake":0, "cheetah":4]
println(legs)
//[ant: 6, cheetah: 4, snake: 0]

legs["spider"] = 333 //set new key and value
println(legs)
//[ant: 6, snake: 0, spider: 333, cheetah: 4]

legs["spider"] = 8
println(legs)
//[ant: 6, snake: 0, spider: 8, cheetah: 4]

println(legs["toa"])
//nil

//continue ... Beyond the Basic

let myLine:String[] = ["A","B","C","DDDD"]
for line in myLine {
    println(line)
}
/*
A
B
C
DDDD
*/

let myBook = [  "0983":"ABC Book",
    "0889":"Cartoon Book",
    "0112":"English Book"]


var book = Dictionary<String,String>()

var myGuideBook:Dictionary<Int,String> = [100:"Thai Travel",200:"Esan Travel",400:"Traveler",777:"YES Go",888:"First Time in ?"]

for (num:Int,name:String) in myGuideBook{
    println("book No.\(num) \(name)")
}

/*
book No.200 Esan Travel
book No.400 Traveler
book No.777 YES Go
book No.888 First Time in ?
book No.100 Thai Travel
*/

myGuideBook.updateValue("Lost Traveler",forKey:120)
myGuideBook.updateValue("Thailand Only",forKey:130)
println(myGuideBook)
//[400: Traveler, 130: Thailand Only, 100: Thai Travel, 200: Esan Travel, 777: YES Go, 888: First Time in ?, 120: Lost Traveler]


myGuideBook.updateValue("Sale! Thai Travle",forKey:100)
println(myGuideBook)
//[400: Traveler, 130: Thailand Only, 100: Sale! Thai Travle, 200: Esan Travel, 777: YES Go, 888: First Time in ?, 120: Lost Traveler]

myGuideBook[888] = "First Time in Where?"
myGuideBook[889] = "First Time in LA"
println(myGuideBook)
//[400: Traveler, 130: Thailand Only, 100: Sale! Thai Travle, 200: Esan Travel, 777: YES Go, 888: First Time in Where?, 120: Lost Traveler, 889: First Time in LA]

myGuideBook[100] = nil
println(myGuideBook)
//[400: Traveler, 130: Thailand Only, 200: Esan Travel, 777: YES Go, 888: First Time in Where?, 120: Lost Traveler, 889: First Time in LA]

myGuideBook.removeValueForKey(200)
println(myGuideBook)
//[400: Traveler, 130: Thailand Only, 120: Lost Traveler, 777: YES Go, 888: First Time in Where?, 889: First Time in LA]

//myGuideBook.removeAtIndex(DictionaryIndex(200,"Esan Travel"))
//println(myGuideBook)


