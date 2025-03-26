//
//  MainView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewState: MainViewState
    
    var body: some View {
        
            VStack {
                Text("Danh sách Chat") // Placeholder for chat list
                Spacer()
            }
            .navigationTitle("Chats") // Title
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Button(action: createGroupChat) {
                            Image(systemName: "plus.square")
                        }
                        Button(action: sortChats) {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                        }
                    }
                }
            }

    }
    // Action for buttons
    func createGroupChat() {
        print("Tạo nhóm chat")
    }
    
    func sortChats() {
        print("Sắp xếp danh sách chat")
    }
    
    struct MainPreviews: PreviewProvider {
        static var previews: some View {
            ApplicationViewBuilder.stub.build(view: .main)
        }
    }
}
