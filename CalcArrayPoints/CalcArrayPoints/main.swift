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

//count an array
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
    let x : Double = pairA["x"]! + pairB["x"]!
    let y : Double = pairA["y"]! + pairB["y"]!
    return ["x":x, "y":y]
}

//use dictionary to substract 2 pairs
func pointsDicSubtract(pairA: [String:Double], pairB: [String:Double]) -> [String:Double] {
    let x : Double = pairA["x"]! - pairB["x"]!
    let y : Double = pairA["y"]! - pairB["y"]!
    return ["x":x, "y":y]
}

