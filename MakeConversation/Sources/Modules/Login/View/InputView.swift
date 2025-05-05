//
//  InputView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 5/5/25.
//

import SwiftUI

struct InputView: View {
    @State var email: String
    @State var password: String
    
    var body: some View {
        VStack(alignment: .leading) {
            InputField(title: "Email", isSecure: false, text: email)
            
            InputField(title: "Password", isSecure: true, text: password)
        }
        .padding(.horizontal, 8)
    }
}

struct InputField: View {
    var title: String
    var isSecure: Bool
    
    @State var text: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(title)
                    .applySubHeader2Style()
                    .padding(.horizontal, 8)
                    .padding(.bottom, 2)
                        
                VStack {
                    if isSecure {
                        SecureField("Enter your \(title)", text: $text)
                            .textFieldStyle(CustomTextFieldStyle(keyboadType: .default))
                            .textFieldStyle(.roundedBorder)
                    } else {
                        TextField("Enter your \(title)", text: $text)
                            .textFieldStyle(CustomTextFieldStyle(keyboadType: .default))
                            .background(Color.white)
                            .textFieldStyle(.roundedBorder)
                    }
                }
                .padding(.bottom, 10)
            }
        }
    }
}

#Preview {
    InputView(email: "", password: "")
}
