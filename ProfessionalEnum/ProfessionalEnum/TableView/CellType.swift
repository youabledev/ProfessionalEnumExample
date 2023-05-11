//
//  CellType.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit

enum CellType: String {
    case leftLow = "LeftLowTableViewCell"
    case leftHigh = "LeftHighTableViewCell"
    case middleLow = "MiddleLowTableViewCell"
    case middleHigh = "MiddleHighTableViewCell"
    case rightLow = "RightLowTableViewCell"
    case rightHigh = "RightHeighTableViewCell"
    
    var background: UIColor {
        switch self {
        case .leftLow, .leftHigh:
            return .gray
        case .middleLow, .middleHigh:
            return .yellow
        case .rightLow, .rightHigh:
            return .brown
        }
    }
    
    var cellHeight: CGFloat {
        switch self {
        case .leftLow, .middleLow, .rightLow:
            return 200
        case .leftHigh, .middleHigh, .rightHigh:
            return 450
        }
    }
    
    var cellClass: AnyClass {
        switch self {
        case .leftLow:
            return LeftLowTableViewCell.self
        case .leftHigh:
            return LeftHighTableViewCell.self
        case .middleLow:
            return MiddleLowTableViewCell.self
        case .middleHigh:
            return MiddleHighTableViewCell.self
        case .rightLow:
            return RightLowTableViewCell.self
        case .rightHigh:
            return RightHeighTableViewCell.self
        }
    }
}
