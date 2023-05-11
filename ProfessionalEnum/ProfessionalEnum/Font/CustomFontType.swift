//
//  CustomFontType.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit

enum CustomFontType: String {
    case medium = "PAYWPro-Medium"
    case regular = "PAYWPro-Regular"
    case semibold = "PAYWPro-SemiBold"
    
    func font(size: CGFloat) -> UIFont {
        return UIFont(name: rawValue, size: size)!
    }
}
