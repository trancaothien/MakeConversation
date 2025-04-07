//
//  ContactRowView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 7/4/25.
//

import SwiftUI

struct ContactRowView: View {
    var conversation: ConversationData
    var didTap: () -> Void
    
    var body: some View {
        VStack {
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
                        
                    }
                    
                    //Display user last seen status
                    HStack {
                        if conversation.isOnline {
                            Text("Online")
                                .foregroundColor(.disable)
                                .applyMetadata1Style()
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                        } else {
                            Text("Last seen " + convertTimeString(conversation.lastActiveTime, showTimeAgo: true))
                                .foregroundColor(.disable)
                                .applyMetadata1Style()
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                        }
                        
                        
                    }
                    .padding(.top, 2)
                }
            }
            .onTapGesture {
                didTap()
            }
            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 1)
                .padding(.top, 12.5)
        }
        
    }
}

#Preview {
    ContactRowView(conversation: ConversationData(
        avatarUrl: nil,
        userName: "Athalia Putri",
        latestMessage: "Good morning, did you sleep well?",
        lastActiveTime: "2025-04-07T5:44:00+0000",
        time: "2025-04-05T10:44:00+0000",
        isOnline: false,
        unreadCount: 0
    )) {
        
    }
}
