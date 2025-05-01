//
//  ContactRowView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 7/4/25.
//

import SwiftUI

struct ContactRowView: View {
    var contactData: ContactData
    var didTap: () -> Void
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                ZStack(alignment: .topTrailing) {
                    if let avatar = contactData.avatarUrl {
                        AvatarUrl(url: avatar)
                    } else {
                        EmptyAvatar(userName: contactData.userName)
                    }
                    if contactData.isOnline {
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
                        Text(contactData.userName)
                            .applyBody1Style()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .lineLimit(1)
                    }
                    
                    HStack {
                        if contactData.isOnline {
                            Text("userStatus.isOnline")
                                .foregroundColor(.disable)
                                .applyMetadata1Style()
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                        } else {
                            Text(convertLastActiveTime(contactData.lastActiveTime))
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
                .frame(height: 1)
                .foregroundColor(.neutralDivider)
                .padding(.top, 12)
        }
        
    }
}

#Preview {
    ContactRowView(contactData: ContactData(
        avatarUrl: "https://gravatar.com/avatar/20de6398e807f31bb3c5fbc3e7d84d2b?s=400&d=robohash&r=x",
        userName: "Athalia Putri",
        lastActiveTime: "2025-04-07T5:44:00+0000",
        isOnline: false
    )) {
        
    }
}
