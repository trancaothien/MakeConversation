//
//  ChatRowView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 31/3/25.
//

import SwiftUI

struct ChatRowView: View {
    var userAvatar: Image?
    var userName: String
    var lastMessageContent: String?
    var unReadCount: Int?
    var sentTime: String?
    var isOnline: Bool
    
    var body: some View {
        HStack() {
            //user's avatar and user's status
            ZStack {
                //avatar
                if let userAvatar = userAvatar {
                    userAvatar
                        .resizable()
                        .frame(width: 48, height: 48)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                } else {
                    Image(systemName: "person.crop.square.fill")
                        .resizable()
                        .frame(width: 48, height: 48)
                }
                //status
                Circle()
                    .fill(Color.white)
                    .frame(width: 14, height: 14)
                    .overlay(content: {
                            Circle()
                            .fill(isOnline ? Color.green : Color.red)
                                .frame(width: 11, height: 11)
                    })
                    .offset(x: 18, y: -18)
            }
            
            
            //Conversation content
            VStack(alignment: .leading) {
                //user name and time
                HStack {
                    Text(userName)
                    
                    Spacer()
                    
                    if let sentTime = sentTime {
                        Text(sentTime)
                            .foregroundColor(.gray)
                    } else {
                        Text("?")
                    }
                    
                }
                
                HStack {
                    //last message content
                    if let lastMessageContent = lastMessageContent {
                        Text(lastMessageContent)
                            .foregroundColor(.gray)
                            .font(.subheadline)
                    } else {
                        Text("Cant load last message content")
                    }
                    
                    Spacer()
                    //unread count
                    Circle()
                        .fill(Color.unreadCircle)   //rgba(210, 213, 249, 1)
                        .frame(width: 20, height: 20)
                        .overlay(content: {
                            if let unReadCount = unReadCount {
                                Text("\(unReadCount)")
                            } else {
                                Text("?")
                            }
                        })
                }
                
            }
        }
    }
}

#Preview {
    ChatRowView(userAvatar: Image(.avatar), userName: "Cao Thang", lastMessageContent: "Good morning", unReadCount: 1, sentTime: "Today", isOnline: false)
}
