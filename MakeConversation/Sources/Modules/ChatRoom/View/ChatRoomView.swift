//
//  ChatRoomView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 13/4/25.
//

import SwiftUI

struct ChatRoomView: View {
    
    @StateObject var viewState: ChatRoomViewState
    @State var shouldScrollToBottom: Bool = false
    var conversationData: ConversationData
    private static let botId = "botIdHere"
    
    var body: some View {
        ScrollViewReader { reader in
            ScrollView {
                LazyVStack {
                    let groupedMessages = Dictionary(grouping: viewState.chatData.filter { $0.roomId == "\(conversationData.id)" }) { message in
                        return convertTimeString(message.createdAt)
                    }
                                        
                    ForEach(groupedMessages.keys.sorted(), id: \.self) { date in
                        //show date of message
                        GroupMessageTime(time: date)
                                            
                        // show message in date
                        ForEach(groupedMessages[date] ?? [], id: \.self) { message in
                            ChatRowView(chatMessage: message, userData: viewState.userData)
                        }
                    }
                    .onChange(of: shouldScrollToBottom) { _ in
                        withAnimation {  // add animation for scroll to top
                            reader.scrollTo(Self.botId, anchor: .bottom) // scroll
                        }
                    }
                    
                    //temporary for test
                    Color.clear
                        .frame(height: 0.01)
                        .id(Self.botId)
                }
            }
            .background(Color.neutral)  //Color of Chat background
        }
        .toolbar {
            //Top bar
            ToolbarItem(placement: .topBarLeading) {
                HStack {
                    Button(action: {
                        viewState.backButtonDidTap = true
                    }) {
                        Image(systemName: "chevron.left")
                    }
                    
                    Text(conversationData.userName)
                        .applySubHeader1Style()
                }
                .padding(.vertical, 16)
                .padding(.bottom, 13)
            }
            
            
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Image(.searchInChatRoomIcon)
                            .frame(width: 24, height: 24)
                        
                    Image(.menuInChatRoomIcon)
                        .frame(width: 24, height: 24)
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            ChatInputBar(newMessage: $viewState.newMessage, confident: $shouldScrollToBottom, action: {
                viewState.sendMessage()
            })
        }
        .onAppear() {
            viewState.viewDidLoad(conversationData: conversationData)
        }
    }
}



struct ChatRoomPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .chatRoom(ConversationData(
                avatarUrl: "https://i.pinimg.com/736x/97/bb/06/97bb067e30ff6b89f4fbb7b9141025ca.jpg",
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                lastActiveTime: "2025-04-05T10:44:00+0000",
                time: "2025-04-04T10:44:00+0000",
                isOnline: true,
                unreadCount: 3
            )))
        }
        
    }
}
