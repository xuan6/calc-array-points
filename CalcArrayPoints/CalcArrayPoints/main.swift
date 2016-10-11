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
func addGenericResult (left: Double, right: Double, op : (Double, Double) -> Double) -> Double {
    return op(left, right)
}

//take an array for addd
func addArray(arrayFun: [Double]) -> Double {
    return arrayFun.reduce(0, +)
}

//take an array for multiply
func multiplyArray(arrayFun: [Double]) -> Double {
    return arrayFun.reduce(0, *)
}

//count an array
func countArray(arrayFun: [Double]) -> Int {
    var count : Int = 0
    for _ in arrayFun{
        count = count + 1
    }
    return count
}

//calculate the average of an array
func averageArray(arrayFun: [Double]) -> Double {
    return addArray(arrayFun)/countArray(arrayFun)
}
