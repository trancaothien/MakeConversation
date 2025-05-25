//
//  HeaderView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 5/5/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Text("Set Details")
                .applySubHeader1Style()
            
            Text("Your new password must be different to previously used Passwords.")
                .applyBody2Style()
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(4)
                .frame(maxWidth: 264, minHeight: 40)
                .layoutPriority(1)
        }
        .padding(.bottom, 24)
    }
}

#Preview {
    HeaderView()
}
