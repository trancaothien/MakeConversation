//
//  TextfieldStyle.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 25/3/25.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    
    var keyboadType: UIKeyboardType
    
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .font(.mulish(size: 14, weight: .semibold))
                .foregroundColor(.disable)
                .padding(EdgeInsets(top: 6, leading: 8, bottom: 6, trailing: 8))
                .cornerRadius(4)
                .keyboardType(keyboadType)
        }
}
