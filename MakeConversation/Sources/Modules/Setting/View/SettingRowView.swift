//
//  SettingRowView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 7/4/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            VStack {
                SettingRowView(icon: .emtyUserAvatarIcon, title: "Account", action: {
                    print("Clicked on Account button")
                })
                
                SettingRowView(icon: .chatsIconInSetting, title: "Chats", action: {
                    print("Clicked on Chats button")
                })
            }
            .padding(.bottom, 16)
            
            
            VStack {
                SettingRowView(icon: .appreanceIcon, title: "Appereance", action: {
                    print("Clicked on Appereance button")
                })
                
                SettingRowView(icon: .notificationIcon, title: "Notification", action: {
                    print("Clicked on Notification button")
                })
                
                SettingRowView(icon: .privacyIcon, title: "Privacy", action: {
                    print("Clicked on Privacy button")
                })
                
                SettingRowView(icon: .dataUsageIcon, title: "Data Usage", action: {
                    print("Clicked on Data Usage button")
                })
                
                Rectangle()
                    .frame(width: .infinity, height: 1)
                    .foregroundColor(.gray)
                    .padding(.bottom, 8)
                
                SettingRowView(icon: .helpIcon, title: "Help", action: {
                    print("Clicked on Help button")
                })
                
                SettingRowView(icon: .inviteIcon, title: "Invite Your Friends", action: {
                    print("Clicked on Invite button")
                })
            }
            .padding(.bottom, 141)
        }
    }
}

struct SettingRowView: View {
    let icon: ImageResource
    let title: String
    let action: () -> Void
    
    
    var body: some View {
        Button(action: action) {
            HStack() {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.black)
                    .padding(.trailing, 6)
                
                Text(title)
                    .applySubHeader1Style()
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
            }
            
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    MenuView()
}
