//
//  ChatRowView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 31/3/25.
//

import SwiftUI

struct ConversationRowView: View {
    var conversation: ConversationData
    var didTap: () -> Void
    
    var body: some View {
        HStack {
            ZStack(alignment: .topTrailing) {
                if let avatar = conversation.avatarUrl {
                    AvatarUrl(url: avatar)
                } else {
                    EmptyAvatar(userName: conversation.userName)
                }
                if conversation.isOnline {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 16, height: 16)
                        .overlay(content: {
                                Circle()
                                .fill(Color.green)
                                .frame(width: 12, height: 12)
                        })
                        .offset(x: 3, y: -3)
                }
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text(conversation.userName)
                        .applyBody1Style()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Text(convertTimeString(conversation.time))
                        .applyMetadata2Style()
                }
                
                HStack {
                    Text(conversation.latestMessage)
                        .foregroundColor(.disable)
                        .applyMetadata1Style()
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                    
                    Spacer()
                    
                    if conversation.unreadCount > 0 {
                        Circle()
                            .fill(.unreadCircle)
                            .frame(width: 20, height: 20)
                            .overlay(content: {
                                Text("\(conversation.unreadCount)")
                                    .applyMetadata3Style(color: .black)
                            })
                    }
                }
            }
        }
        .onTapGesture {
            didTap()
        }
    }
}

#Preview {
    ConversationRowView(conversation: ConversationData(
        avatarUrl: nil,
        userName: "Athalia Putri",
        latestMessage: "Good morning, did you sleep well?",
        time: "2025-04-05T10:44:00+0000",
        isOnline: true,
        unreadCount: 0
    )) {
        
    }
}
