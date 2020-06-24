//
//  ex3.swift
//  Baitapbuoi1
//
//  Created by macbook on 6/5/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import Foundation

func checkLeapYear()
{
    print("Hãy nhập năm bất kỳ:")
    let year = Int(readLine() ?? "") ?? 0
    if year % 4 == 0
    {
        if year % 100 == 0
        {
            if year % 400 == 0
            {
                print("Năm \(year) là năm nhuận")
            }
            else
            {
                print(("Năm \(year) không phải năm nhuận"))
            }
        }
        else
        {
            print("Năm \(year) là năm nhuận")
        }
    }
    else
    {
        print(("Năm \(year) không phải năm nhuận"))
    }
}
