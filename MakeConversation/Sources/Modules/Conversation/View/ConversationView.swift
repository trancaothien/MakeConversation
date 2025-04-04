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
                
            ScrollView {
                ForEach(0..<30, id: \.self) { tempView in
                    ChatRowView(userAvatar: Image(.avatar), userName: "Cao Thang", lastMessageContent: "Good morning", unReadCount: 4, sentTime: "Today", isOnline: true)
                        .padding(.top, 16)
                }
            }
            .searchable(text: $viewState.placeHolderText, prompt: "Search")
            
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

struct ConversationPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .conversation)
    }
}

