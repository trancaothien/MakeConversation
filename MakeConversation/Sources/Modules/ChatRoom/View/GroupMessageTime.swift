//
//  GroupMessageTime.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 24/4/25.
//

import SwiftUI

struct GroupMessageTime: View {
    
    var time: String
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.divineInChatTime)
            
            Text("\(time)")
                .applyMetadata1Style(color: .disable)
                .padding(.horizontal, 16)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.divineInChatTime)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    GroupMessageTime(time: "12/08")
}
