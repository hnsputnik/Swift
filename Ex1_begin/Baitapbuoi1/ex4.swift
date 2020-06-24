//
//  ex4.swift
//  Baitapbuoi1
//
//  Created by macbook on 6/5/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import Foundation

func findTime() {
    print("Nhập giờ:", terminator: " ")
    var hour = Int(readLine() ?? "") ?? 0
    print("Nhập phút:", terminator: " ")
    var min = Int(readLine() ?? "") ?? 0
    print("Nhập giây:", terminator: " ")
    var sec = Int(readLine() ?? "") ?? 0
    print("Thời gian hiện tại là \(hour) : \(min) : \(sec)")
    print("Nhập X:", terminator: " ")
    let x = Int(readLine() ?? "") ?? 0
    sec += x
    if x <= 10000 {
        while sec >= 60
        {
            min += 1
            sec -= 60
        }
        while min >= 60
        {
            hour += 1
            min -= 60
        }
        while hour >= 12
        {
            hour -= 12
        }
        print("Sau \(x)s thời gian là \(hour) : \(min) : \(sec)")
    }
    else {
        print("Không hợp lệ!")
    }
}
