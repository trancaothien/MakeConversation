//
//  TextExtension.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25.
//

import SwiftUI

extension Text {
    
    func useCustomStyle(size: FontSizeProtocol, color: Color, weight: Font.Weight) -> Text {
        self.font(Font.mulish(size: size, weight: weight))
            .foregroundColor(color)
    }
    
    func useButtonStyle() -> Text {
        self.font(Font.mulish(size: FontSize.size16, weight: .semibold))
    }
    
}
