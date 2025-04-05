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
        ScrollView {
            LazyVStack {
                ForEach(viewState.conversations, id: \.id) { conversation in
                    ConversationRowView(conversation: conversation) {
                        ///TODO: Handle on taped on conversation
                    }
                   .padding(.vertical, 8)
                   .padding(.horizontal, 24)
               }
           }
        }
        .searchable(
            text: $viewState.searchText,
            placement: .toolbar,
            prompt: "search",
        )
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("main.conversation.title")
                    .applySubHeader1Style()
            }
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button(action: {
                        
                    }){
                        Image(.newMessageIcon)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 24)
                    }
                    
                    Button(action: {
                        
                    }){
                        Image(.maskAsReadIcon)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 24, height: 24)
                    }
                }
            }
        }
        .onAppear{
            self.viewState.viewDidLoad()
        }
    }
}

struct ConversationPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .conversation)
        }
    }
}

