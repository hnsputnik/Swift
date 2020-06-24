//
//  ex7.swift
//  Baitapbuoi1
//
//  Created by macbook on 6/5/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import Foundation

func drawX(){
    print("Hãy nhập chiều cao:", terminator:" ")
    let height = Int(readLine() ?? "") ?? 0
    for row in 1 ... height {
        for col in 1 ... height {
            if row == col {
                print("*", terminator:" ")
            }
            else if row + col == height + 1 {
                print("*")
            }
            else {
                print(" ", terminator:"")
            }
        }
    }
//    print("")
    
}
