//
//  ex10.swift
//  Baitapbuoi1
//
//  Created by macbook on 6/5/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import Foundation

func drawStupidTriagle(){
    print("Hãy nhập chiều cao tam giác:", terminator:" ")
    let height = Int(readLine() ?? "") ?? 0
    var i = height
    while i >= 1
    {
      print(String.init(repeating: " ", count: height - i) + String.init(repeating: "*", count: 2*i - 1))
      i -= 1
    }
}
