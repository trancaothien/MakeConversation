//
//  FontSize.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25.
//

import Foundation

enum FontSize: FontSizeProtocol {
    
    case size4
    case size6
    case size8
    case size12
    case size14
    case size16
    case size18
    case size21
    case size24
    case size28
    case size31
    case size36
    case fized(size: CGFloat)
    
    var value: CGFloat {
        switch self {
        case .size4:
            return 4
        case .size6:
            return 6
        case .size8:
            return 8
        case .size12:
            return 12
        case .size14:
            return 14
        case .size16:
            return 16
        case .size18:
            return 18
        case .size21:
            return 21
        case .size24:
            return 24
        case .size28:
            return 28
        case .size31:
            return 31
        case .size36:
            return 36
        case .fized(let size):
            return size
        }
    }
}
