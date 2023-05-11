//
//  CodableExample.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit

struct User: Codable {
    enum CodingKeys: String, CodingKey {
        case idx = "idx"
        case name = "nf_user_name"
        case birth = "nf_user_birth"
    }
    
    /// 고유 값
    let idx: String?
    /// 이름
    let name: String?
    /// 생년월일
    let birth: String?
}

enum ProcessStatus: String, Codable {
    /// 신청
    case application = "1"
    /// 처리 중
    case processing = "3"
    /// 처리 완료
    case completed = "7"
    /// 반려
    case rejected = "9"
    
    var title: String {
        switch self {
        case .application:
            return "신청 완료"
        case .processing:
            return "처리 중"
        case .completed:
            return "완료"
        case .rejected:
            return "반려"
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .application, .processing:
            return .blue
        case .completed:
            return .yellow
        case .rejected:
            return .red
        }
    }
    
    var titleColor: UIColor {
        switch self {
        case .application, .rejected:
            return .white
        case .processing:
            return .yellow
        case .completed:
            return .gray
        }
    }
}
