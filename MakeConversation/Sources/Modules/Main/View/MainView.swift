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
//    @State var placeHolderText: String = ""
    
    var body: some View {
        VStack {
            //search bar
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
        .toolbar() {
            ToolbarItem(placement: .topBarLeading) {
                    Text("Chats")
                    .applyHeader2Style()
                    .padding()
            }

            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button {
                        print("Clicked on newMessage Button")
                    } label: {
                        Image(.newMessageIcon)
                    }
                    
                    Button {
                        print("Clicked on seenMessage Button")
                    } label: {
                        Image(.maskAsReadIcon)
                    }
                }
                .padding()
            }
            
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    Button {
                        print("Clicked on listFriend Button on Bottom Bar")
                    } label: {
                        Image(.listFriendIcon)
                    }
                    
                    Spacer()
                    
                    Button {
                        print("Clicked on Chats Button on Bottom Bar")
                    } label: {
                        Text("Chats")
                            .applySubHeader2Style()
                    }
                    
                    Spacer()
                    
                    Button {
                        print("Clicked on More Button on Bottom Bar")
                    } label: {
                        Image(.moreIcon)
                    }
                }
            }
        }
    }
}

//Preview
struct MainPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .main)
        }
    }
}
