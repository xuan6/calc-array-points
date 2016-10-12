//
//  main.swift
//  CalcArrayPoints
//
//  Created by Xuan Liu on 16/10/10.
//  Copyright © 2016年 Xuan Liu. All rights reserved.
//

import Foundation

//add
func add(left: Double, right: Double) -> Double {
    return( left+right )
}

//subtract
func subtract(left: Double, right: Double) -> Double {
    return( left-right )
}

//multiply
func multiply(left: Double, right: Double) -> Double {
    return( left*right )
}

//divide
func divide(left: Double, right: Double) -> Double {
    return( left/right )
}

//take two numbers at once for +, -, *, /.
func genericCal (left: Double, right: Double, op : (Double, Double) -> Double) -> Double {
    return op(left, right)
}

//take an array for addd
func addArray(arrayFun: [Double]) -> Double {
    return arrayFun.reduce(0, +)
}

//take an array for multiply
func multiplyArray(arrayFun: [Double]) -> Double {
    return arrayFun.reduce(1, *)
}

//count an array, wonder why unittes says we should use reduce to do that??
func countArray(arrayFun: [Double]) -> Double {
    var count : Double = 0
    for _ in arrayFun{
        count = count + 1
    }
    return count
}

//calculate the average of an array
func averageArray(arrayFun: [Double]) -> Double {
    return addArray(arrayFun: arrayFun)/countArray(arrayFun: arrayFun)
}


//generic calculation for array
func genericArray(arrayFun: [Double], op: ([Double]) -> Double)-> Double {
   return op(arrayFun)
}

//tuple calculation - "Points"
func pointsTup(x: Double, y: Double) -> (Double, Double) {
    return (x, y)
}

//add point pairs
func pointsAddSubtract(xyA: (Double, Double), xyB: (Double, Double)) -> (Double, Double) {
    let x : Double = xyA.0 + xyB.0
    let y : Double = xyA.1 + xyB.1
    return (x, y)
}

//subtract point pairs
func pointsTupSubtract(xyA: (Double, Double), xyB: (Double, Double)) -> (Double, Double) {
    let x : Double = xyA.0 - xyB.0
    let y : Double = xyA.1 - xyB.1
    return (x, y)
}

//dict calculation - "Points"
func pointsDic(x: Double, y: Double) -> [String:Double] {
    return ["x": x, "y": y]
}

//use dictionary to add 2 pairs
func pointsDicAdd(pairA: [String:Double], pairB: [String:Double]) -> [String:Double] {
    //for error handeling
    var status : Bool = false //nothing in keys are non-x/non-y
    var x : Double = 0
    var y : Double = 0
    var keys = [String]()
    
    for key in pairA.keys{
        keys.append(key)
    }
    
    for key in pairB.keys{
        keys.append(key)
    }
    
    var startLoop : Bool = true
    while startLoop == true{
        for i in keys{
            if (i != "x" && i != "y"){ //something in keys is non-x/non-y
                status = true //change the status
                startLoop = false //exit loop
            }
            startLoop = false //exit while loop when for loop ends
        }
    }
    //no error then calculate the add
    if status == false {
        x = pairA["x"]! + pairB["x"]!
        y = pairA["y"]! + pairB["y"]!
    }
    
    //show error message if any
    if status == true {
        print("You entered keys that are neither 'x' nor 'y', so the result is (x:0, y:0). Please re-specify keys.")
    }
    return ["x":x, "y":y] //still don't know how to mute the return when there is an error; tried but xcode asked me for 'return' at the end of the function
}

//use dictionary to substract 2 pairs
func pointsDicSubtract(pairA: [String:Double], pairB: [String:Double]) -> [String:Double] {
    //for error handeling
    var status : Bool = false //nothing in keys are non-x/non-y
    var x : Double = 0
    var y : Double = 0
    var keys = [String]()
    
    for key in pairA.keys{
        keys.append(key)
    }
    
    for key in pairB.keys{
        keys.append(key)
    }
    
    var startLoop : Bool = true
    while startLoop == true{
        for i in keys{
            if (i != "x" && i != "y"){ //something in keys is non-x/non-y
                status = true //change the status
                startLoop = false //exit loop
            }
            startLoop = false //exit while loop when for loop ends
        }
    }
    //no error then calculate the sub
    if status == false {
        x = pairA["x"]! - pairB["x"]!
        y = pairA["y"]! - pairB["y"]!
    }
    
    //show error message if any
    if status == true {
        print("You entered keys that are neither 'x' nor 'y', so the result is (x:0, y:0). Please re-specify keys.")
    }
    return ["x":x, "y":y]
}
