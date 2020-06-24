//
//  ex2.swift
//  Baitapbuoi1
//
//  Created by macbook on 6/5/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import Foundation
import Darwin

func checkTriagle() {
    print("Hãy nhập cạnh a:")
    let a = Double(readLine() ?? "") ?? 0
    print("Hãy nhập cạnh b:")
    let b = Double(readLine() ?? "") ?? 0
    print("Hãy nhập cạnh c:")
    let c = Double(readLine() ?? "") ?? 0
    if ((a < b + c) && b < a + c && c < a + b)
    {
        let p = (a + b + c) / Double(2)
        let S = sqrt(p * (p - a) * (p - b) * (p - c))
        print("Diện tích tam giác là \(S)")
    }
    else
    {
        print("\(a) ,\(b), \(c) không phải ba cạnh của tam giác")
    }
}
