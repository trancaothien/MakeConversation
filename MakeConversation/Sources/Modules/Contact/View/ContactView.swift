//
//  ContactView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//
//

import SwiftUI

struct ContactView: View {
    
    @StateObject var viewState: ContactViewState

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewState.contactData, id: \.id) { contact in
                    ContactRowView(contactData: contact) {
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
            prompt: "search"
        )
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("main.contact.title")
                    .applySubHeader1Style()
            }
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button(action: {
                        
                    }){
                        Image(.newContactIconn)
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

struct ContactPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .contact)
        }
        
    }
}

