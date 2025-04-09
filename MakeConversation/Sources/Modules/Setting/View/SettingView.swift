//
//  SettingView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//
//

import SwiftUI

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}

struct SettingView: View {
    @StateObject var viewState: SettingViewState
    

    
    var body: some View {
        VStack(spacing: 0) {
            // Main content
            ScrollView {
                VStack() {
                    // User profile section
                    ProfileItemView(action: {
                        print("Clicked on Profile")
                    }, userData: viewState.userData)
                    
                    
                    
                    // Menu items
                    VStack {
                        MenuItemView(icon: .accountInSettingIcon, title: "main.setting.account".localized, action: {
                            print("Clicked on Account")
                        })
                        MenuItemView(icon: .chatInSettingIcon, title: "main.setting.chats".localized, action: {
                            print("Clicked on Chats")
                        })
                    }
                    .padding(.vertical, 16)
                    
                    VStack {
                        MenuItemView(icon: .appereanceInSettingIcon, title: "main.setting.appereance".localized, action: {
                            print("Clicked on Appereance")
                        })
                        MenuItemView(icon: .notificationInSettingIcon, title: "main.setting.notification".localized, action: {
                            print("Clicked on Notification")
                        })
                        MenuItemView(icon: .privacyInSettingIcon, title: "main.setting.privacy".localized, action: {
                            print("Clicked on Privacy")
                        })
                        MenuItemView(icon: .dataUsageInSettingIcon, title: "main.setting.datausage".localized, action: {
                            print("Clicked on Data Usage")
                        })
                        
                        Rectangle()
                            .frame(height: 1.2)
                            .foregroundColor(.neutralDivider)
                            .padding(.vertical, 8)
                        
                        MenuItemView(icon: .helpInSettingIcon, title: "main.setting.help".localized, action: {
                            print("Clicked on Help")
                        })
                        MenuItemView(icon: .inviteInSettingIcon, title: "main.setting.inviteyourfriends".localized, action: {
                            print("Clicked on Invite Your Friends")
                        })
                    }
                }
                .padding(.horizontal, 16)
            }
            .padding(.bottom, 141)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("main.setting.title")
                    .applySubHeader1Style()
            }
        }
        .onAppear() {
            self.viewState.viewDidLoad()
        }
    }
}

//Menu view


// User profile



struct SettingPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .setting)
        }
    }
}

