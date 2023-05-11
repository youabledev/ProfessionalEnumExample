//
//  UserDefaults+Ex.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import Foundation

extension UserDefaults {
    private enum Keys {
        static let userToken = "userToken"
        static let isDebugMode = "isDebugMode"
    }
    
    /// 사용자 토큰
    var userToken: String {
        get {
            return string(forKey: Keys.userToken) ?? ""
        } set {
            setValue(newValue, forKey: Keys.userToken)
            UserDefaults.standard.synchronize()
        }
    }
    
    /// 디버깅 모드
    var isDebugMode: Bool {
        get {
            return bool(forKey: Keys.isDebugMode)
        } set {
            setValue(newValue, forKey: Keys.isDebugMode)
            UserDefaults.standard.synchronize()
        }
    }
    
    /// remove
    func clear() {
        removeObject(forKey: Keys.userToken)
        removeObject(forKey: Keys.isDebugMode)
        
        if synchronize() {
            print("\(#file.split(separator: "/").last!)-\(#function)[\(#line)] 클리어 성공")
        } else {
            print("\(#file.split(separator: "/").last!)-\(#function)[\(#line)] 클리어 실패")
        }
    }
}
