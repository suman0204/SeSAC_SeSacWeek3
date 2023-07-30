//
//  Enumeration.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/27.
//

import Foundation

enum AllSettings: String, CaseIterable {
    case notice = "공지사항"
    case lab = "실험실"
    case version = "버전 정보"
}

enum PrivateSettings: String, CaseIterable {
    case privateSet = "개인/보안"
    case alarm = "알림"
    case chat = "채팅"
    case multiprofile = "멀티프로필"
}

enum Extra: String, CaseIterable {
    case center = "고객센터/도움말"
}


