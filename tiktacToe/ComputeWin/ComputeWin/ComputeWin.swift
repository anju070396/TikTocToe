//
//  ComputeWin.swift
//  ComputeWin
//
//  Created by Test Account on 12/04/19.
//  Copyright © 2019 example. All rights reserved.
//

import Foundation
public class IsWin {
    
    public static func horizontalWin(valueArray : [[Int]], playerValue : Int) -> Bool{
        for arr in valueArray {
            var flag = false
            for i in 0..<arr.count {
                if(arr[i] != playerValue){
                    flag = true
                    break
                }
            }
            if(!flag){
                return true
            }
        }
        return false
    }
    
   public static  func verticalWin(valueArray : [[Int]], PlayerValue : Int) -> Bool {
        for i in 0..<valueArray.count{
            var flag = false
            for j in 0..<valueArray.count{
                if(valueArray[j][i] != PlayerValue){
                    flag = true
                    break
                }
            }
            if(!flag){
                return true
            }
        }
        return false
    }
    
    public static func diagonalOneWin(valueArray : [[Int]], playerValue : Int) -> Bool {
        var j : Int = 0
        for i in 0..<valueArray.count{
            if(valueArray[i][j] != playerValue) {
                return  false
            }
            j += 1
        }
        
        return true
    }
    
    public static func diagonaltwosWin(valueArray : [[Int]], playerValue : Int) -> Bool {
        var j : Int = 2
        for i in 0..<valueArray.count{
            if(valueArray[i][j] != playerValue) {
                return false
            }
            j -= 1
        }
        return true
    }
    
}
