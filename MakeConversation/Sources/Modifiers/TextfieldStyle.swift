//
//  TextfieldStyle.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 25/3/25.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    var width: CGFloat
    var heiht: CGFloat
    var keyboadType: UIKeyboardType
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .font(Font.mulish(size: FontSize.size14, weight: .semibold))
                .foregroundColor(.textInField)
                .padding(EdgeInsets(top: 6, leading: 8, bottom: 6, trailing: 8))
                .background(.textfieldBackground)
                .cornerRadius(4)
                .frame(width: width, height: heiht)
                .keyboardType(keyboadType)
        }
}
