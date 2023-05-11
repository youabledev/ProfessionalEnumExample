//
//  APIList.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import Foundation

enum Product {
    case sunglass(String)
    case flower(Int)
    
    func printValue() {
        switch self {
        case .sunglass(let name):
            print(name)
        case .flower(let num):
            print(num)
        }
    }
}

