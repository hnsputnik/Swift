//
//  ex8.swift
//  Baitapbuoi1
//
//  Created by macbook on 6/6/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import Foundation

func findPerfectNumber() {
    print("Nhập n:", terminator:" ")
    let n = Int(readLine() ?? "") ?? 0
    if n <= 32767 {
        for number in 2 ... n {
            var sum = 0
            for i in 1 ... number / 2 {
                if number % i == 0 {
                    sum += i
                }
            }
            if sum == number {
                print("\(number) là số hoàn hảo")
            }
        }
    }
    else {
        print("N không hợp lệ!")
    }
}

