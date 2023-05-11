//
//  SimpleDataType.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import Foundation

/// 사용하기 애매한 String 타입의 값은 enum 을 이용해서 타입으로 변경하여 사용할 수 있음
enum Grade: String {
    case normal = "n"
    case associate = "a"
}
