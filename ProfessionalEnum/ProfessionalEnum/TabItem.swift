//
//  TabItem.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit

enum TabItem: Int, CaseIterable {
    case category
    case point
    case home
    case product
    case setting
    
    var tabTitle: String {
        switch self {
        case .category:
            return "카테고리"
        case .point:
            return "포인트"
        case .home:
            return "홈"
        case .product:
            return "상품"
        case .setting:
            return "설정"
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .category:
            return UIImage(named: "category")
        case .point:
            return UIImage(named: "point")
        case .home:
            return UIImage(named: "home")
        case .product:
            return UIImage(named: "product")
        case .setting:
            return UIImage(named: "setting")
        }
    }
    
    var tabIndex: Int {
        return rawValue
    }
}
