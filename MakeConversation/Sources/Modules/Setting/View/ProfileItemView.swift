//
//  ProfileItemView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 8/4/25.
//

import SwiftUI

struct ProfileItemView: View {

    let action: () -> Void
    
    let userData: UserData
    
    var body: some View {
        Button(action: {
            action()
        }) {
            HStack(spacing: 12) {
                //User avatar
                if let avatar = userData.avatarUrl {
                    AvatarUrl(url: avatar)
                } else {
                    EmptyAvatar(userName: userData.userName)
                }
                
                
                // User info
                VStack(alignment: .leading, spacing: 4) {
                    Text(userData.userName)
                        .applyBody1Style()
                        .foregroundColor(.primary)
                    //user phone
                    Text("+84 347 016 318")
                        .applyMetadata1Style()
                        .foregroundColor(.disable)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
            }
        }
        .padding(.vertical, 8)
    }
}

//#Preview {
//    ProfileItemView()
//}
