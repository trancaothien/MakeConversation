//
//  MenuItemView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 8/4/25.
//

import SwiftUI

struct MenuItemView: View {
    let icon: ImageResource
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            HStack {
                Image(icon)
                    .frame(width: 24, height: 24)
                
                Text(title)
                    .applyBody1Style()
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.neutraActive)
            }
        }
        .padding(.vertical, 8)
    }
}

//#Preview {
//    MenuItemView()
//}
