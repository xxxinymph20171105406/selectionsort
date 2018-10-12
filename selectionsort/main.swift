//
//  main.swift
//  selectionsort
//
//  Created by s20171105406 on 2018/9/29.
//  Copyright © 2018年 s20171105406. All rights reserved.
//

import Foundation

func minMax(array: inout [Int]) {
    
    for i in (0..<array.count){
        var k = i
        for j in (k+1..<array.count){
            if(array[k] > array[j]){
                k = j
            }
        }
        if(k != i){
            let temp = array[k]
            array[k] = array[i]
            array[i] = temp
        }
    }
    
    print(array)
}

var array = [8, -6, 2, 109, 3, 71]
minMax(array: &array)

