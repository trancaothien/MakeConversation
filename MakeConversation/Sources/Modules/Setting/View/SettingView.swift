//
//  SettingView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//
//

import SwiftUI

struct SettingView: View {
    
    @StateObject var viewState: SettingViewState
    
    private var chatSettingGroup: [(ImageResource, String, () -> Void)] {
        [
            (ImageResource.accountInSettingIcon, String(localized: "main.setting.account"), self.viewState.accountSettingDidTap),
            (ImageResource.chatInSettingIcon, String(localized: "main.setting.chats"), self.viewState.chatSettingDidTap)
        ]
    }
    
    private var appSettingGroup: [(ImageResource, String, () -> Void)] {
        [
            (ImageResource.appereanceInSettingIcon, String(localized: "main.setting.appereance"), self.viewState.appreeanceSettingDidTap),
            (ImageResource.notificationInSettingIcon, String(localized: "main.setting.notification"), self.viewState.notificationSettingDidTap),
            (ImageResource.privacyInSettingIcon, String(localized: "main.setting.privacy"), self.viewState.privacySettingDidTap),
            (ImageResource.dataUsageInSettingIcon, String(localized: "main.setting.datausage"), self.viewState.datausageSettingDidTap),
        ]
    }
    
    private var supportSettingGroup: [(ImageResource, String, () -> Void)] {
        [
            (ImageResource.helpInSettingIcon, String(localized: "main.setting.help"), self.viewState.helpSettingDidTap),
            (ImageResource.inviteInSettingIcon, String(localized: "main.setting.inviteyourfriends"), self.viewState.inviteSettingDidTap),
        ]
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileItemView(userData: viewState.userData) {
                    
                }
                
                VStack {
                    ForEach(chatSettingGroup, id: \.0) { item in
                        MenuItemView(icon: item.0, title: item.1, action: item.2)
                    }
                }
                
                VStack {
                    ForEach(appSettingGroup, id: \.0) { item in
                        MenuItemView(icon: item.0, title: item.1, action: item.2)
                    }
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.neutralDivider)
                        .padding(.vertical, 8)
                    
                    ForEach(supportSettingGroup, id: \.0) { item in
                        MenuItemView(icon: item.0, title: item.1, action: item.2)
                    }
                }
            }
            .padding(16)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("main.setting.title")
                    .applySubHeader1Style()
            }
        }
    }
}

struct SettingPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .setting)
        }
    }
}

