//
//  ConversationView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct ConversationView: View {
    @StateObject var viewState: ConversationViewState
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $viewState.placeHolderText)
                .textFieldStyle(CustomTextFieldStyle(keyboadType: .default))
                .frame(height: 36)
                .frame(maxWidth: .infinity)
                .background(.neutral)
                .padding(.horizontal)
                .padding(.top, 10)
                .padding(.bottom, 10)
                
            ScrollView {

                ForEach(0..<30, id: \.self) { tempView in
                    ChatRowView(userAvatar: Image(.avatar), userName: "Cao Thang", lastMessageContent: "Good morning", unReadCount: 4, sentTime: "Today", isOnline: true)
                        .padding(.horizontal)
                }
            }
            Spacer()
        }
    }
}

struct ConversationPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .conversation)
    }
}

