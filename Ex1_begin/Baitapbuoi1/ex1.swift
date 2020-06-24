//
//  ex1.swift
//  Baitapbuoi1
//
//  Created by macbook on 6/5/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import Foundation

func checkNumber() {
    print("Hãy nhập số N:")
    let n = Int(readLine() ?? "") ?? 0
    if n > 0
    {
        print("Số \(n) là số nguyên dương")
    }
    else
    {
        print("Số \(n) không phải là số nguyên dương")
    }
    if n % 2 == 0
    {
        print("Số \(n) là số chẵn")
    }
    else
    {
        print("Số \(n) là số lẻ")
    }
    if n % 5 == 0
    {
        print("Số \(n) chia hết cho 5")
    }
    else
    {
        print("Số \(n) không chia hết cho 5")
    }
    if n < 2
    {
        print("Số \(n) không phải là số nguyên tố")
    }
    var flag : Bool = false
    for i in 2...n/2{
        if (n % i == 0)
        {
            flag = true
        }
        else {
            flag = false
        }
    }
    if flag == false
    {
    print("\(n) là số nguyên tố")
    } else
    {
    print("\(n) không phải số nguyên tố")
    }
}
