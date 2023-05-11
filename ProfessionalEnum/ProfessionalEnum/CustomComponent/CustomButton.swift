//
//  CustomButton.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit

enum CustomButtonType {
    case rect
    case round
    
    var radius: CGFloat {
        switch self {
        case .rect:
            return 0
        case .round:
            return 5
        }
    }
}

class CustomButton: UIButton {
    init(frame: CGRect, type: CustomButtonType) {
        super.init(frame: frame)
        layer.masksToBounds = true
        layer.cornerRadius = type.radius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
