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
func points(x: Double, y: Double) -> (Double, Double) {
    return (x, y)
}
