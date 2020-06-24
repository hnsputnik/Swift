//
//  ex9.swift
//  Baitapbuoi1
//
//  Created by macbook on 6/5/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import Foundation
func drawSquare(){
    print("Hãy nhập chiều dài hình chữ nhật:", terminator:" ")
    let length = Int(readLine() ?? "") ?? 0
//    print("Hãy nhập chiều rộng hình chữ nhật:", terminator:" ")
//    let breath = Int(readLine() ?? "") ?? 0
    for i in 1...length
    {
        if i == 1 || i == length
        {
            print(String.init(repeating: "*", count: 2 * length))
        }
        else
        {
          print(String.init(repeating: "*", count: 1) + String.init(repeating: " ", count: 2 * length - 2) + String.init(repeating: "*", count: 1))
        }
    }
}


