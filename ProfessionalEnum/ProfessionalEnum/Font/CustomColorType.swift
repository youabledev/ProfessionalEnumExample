//
//  CustomColorType.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit

enum CustomColorType {
    case white
    case red
    case black
    
    var color: UIColor {
        switch self {
        case .white:
            return .init(rgb: 0xffffff)
        case .red:
            return .init(rgb: 0xf85454)
        case .black:
            return .init(rgb: 0x000000)
        }
    }
}
