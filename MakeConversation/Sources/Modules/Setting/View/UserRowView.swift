//
//  UserRowView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 7/4/25.
//

import SwiftUI

struct UserRowView: View {
//    @State var avatarImage: ImageResource? = .avatar
    @State var avatarImage: ImageResource? = nil
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack() {
                HStack() {
                    //user avatar
                    ZStack {
                        Circle()
                            .fill(Color.neutral)
                            .frame(width: 49.1, height: 50)

                        if avatarImage != nil {
                            Image(.avatar)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 49.1, height: 50)
                        } else {
                            Image(.emtyUserAvatarIcon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        }
                        
                    }
                    //User name and phone number
                    VStack(alignment: .leading) {
                        Text("Almayra Zamzamy")
                            .applySubHeader2Style()
                            .padding(.bottom, 02)
                        Text("+62 130917101920")
                            .foregroundColor(.disable)
                            .applyMetadata1Style()
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    //Trailingn V icon
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                    
                }
            }
        }
        
    }
}

#Preview {
    UserRowView( action: {
        print("Clicked on User button")
    })
}
