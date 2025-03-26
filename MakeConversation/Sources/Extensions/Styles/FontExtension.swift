//
//  FontExtension.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25.
//

import SwiftUI

extension Font {
    static func mulish(size: FontSizeProtocol, weight: Font.Weight) -> Font {
        return Font.custom("Mulish", size: size.value).weight(weight)
    }
}
