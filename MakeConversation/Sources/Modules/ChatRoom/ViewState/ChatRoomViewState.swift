//
//  MainViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI
import Combine

final class ChatRoomViewState: ObservableObject, ChatRoomViewStateProtocol {
    private let id = UUID()
    private var presenter: ChatRoomPresenterProtocol?
    private var cancellables = Set<AnyCancellable>()
    
    @Published var newMessage: String = ""
    @Published var chatData: [MessageData] = []
    @Published var receiverData: ConversationData? = nil
    @Published var sendButtonDidTap: Bool = false
    @Published var backButtonDidTap: Bool = false
    
    
    var userData = UserData(
        id: UUID(),
        avatarUrl: "https://avatar.iran.liara.run/public",
        userName: "Cao Thang",
        phoneNumber: "+84 347 016 318"
    )
    
    init() {
        observeBackButtonTap()
    }
    
    func set(with presener: ChatRoomPresenterProtocol) {
        self.presenter = presener
    }
    
    func viewDidLoad(conversationData: ConversationData) -> Void {
        
        receiverData = conversationData //to get data from ChatRoomView
        
        if let receiverInfo = receiverData {
            chatData = [
                MessageData(
                        roomId: "\(receiverData!.id)",
                        roomTitle: "\(receiverData!.userName)",
                        roomAvatar: "\(receiverData!.avatarUrl)",
                        sender: "\(receiverData!.id)",
                        content: "Hello everyone!",
                        mediaUrl: nil,
                        type: "text",
                        clients: ["user_001", "user_002"],
                        reactions: ["👍": "user_002"],
                        createdAt: "2025-04-09T10:00:00Z",
                        updatedAt: "2025-04-12T10:00:00Z",
                        deletedAt: ""
                    ),
                    MessageData(
                        roomId: "\(receiverData!.id)",
                        roomTitle: "\(receiverData!.userName)",
                        roomAvatar: "\(receiverData!.avatarUrl)",
                        sender: "\(receiverData!.id)",
                        content: "Welcome!",
                        mediaUrl: nil,
                        type: "text",
                        clients: ["user_001", "user_002"],
                        reactions: ["❤️": "user_001"],
                        createdAt: "2025-04-09T10:01:00Z",
                        updatedAt: "2025-04-12T10:01:00Z",
                        deletedAt: ""
                    ),
                MessageData(
                    roomId: "\(receiverData!.id)",
                    roomTitle: "\(receiverData!.userName)",
                    roomAvatar: "\(receiverData!.avatarUrl)",
                    sender: "\(receiverData!.id)",
                    content: "Welcome!",
                    mediaUrl: "https://picsum.photos/id/237/200/300",
                    type: "text",
                    clients: ["user_001", "user_002"],
                    reactions: ["❤️": "user_001"],
                    createdAt: "2025-04-12T10:01:00Z",
                    updatedAt: "2025-04-12T10:01:00Z",
                    deletedAt: ""
                ),
                    MessageData(
                        roomId: "\(receiverData!.id)",
                        roomTitle: "\(receiverData!.userName)",
                        roomAvatar: "\(receiverData!.avatarUrl)",
                        sender: "\(userData.id)",
                        content: "nw_connection_copy_connected_local_endpoint_block_invoke [C2] Connection has no local endpoint",
                        mediaUrl: "https://picsum.photos/seed/picsum/200/300",
                        type: "image",
                        clients: ["user_001", "user_002"],
                        reactions: [:],
                        createdAt: "2025-04-13T10:02:00Z",
                        updatedAt: "2025-04-12T10:02:00Z",
                        deletedAt: ""
                    ),
                MessageData(
                    roomId: "This is Wrong ID",
                    roomTitle: "\(receiverData!.userName)",
                    roomAvatar: "\(receiverData!.avatarUrl)",
                    sender: "user_001",
                    content: "For test wrong id............",
                    mediaUrl: "https://example.com/image1.jpg",
                    type: "image",
                    clients: ["user_001", "user_002"],
                    reactions: [:],
                    createdAt: "2025-04-14T10:02:00Z",
                    updatedAt: "2025-04-12T10:02:00Z",
                    deletedAt: ""
                )
            ]
        }
        
        
        
    }
    
    func sendMessage() -> Void {
        if newMessage != "" {
            chatData.append(MessageData(
                roomId: "\(receiverData!.id)",
                roomTitle: "General Chat",
                roomAvatar: "https://example.com/avatar1.png",
                sender: "\(userData.id)",
                content: newMessage,
                mediaUrl: "https://example.com/image1.jpg",
                type: "image",
                clients: ["user_001", "user_002"],
                reactions: [:],
                createdAt: convertTimeToString(),
                updatedAt: "2025-04-12T10:02:00Z",
                deletedAt: ""
            ))
            newMessage = ""
        }
    }
}

extension ChatRoomViewState {
    private func observeBackButtonTap() {
        $backButtonDidTap.sink(receiveValue: { value in
            if !value { return }
            self.presenter?.backButtonDidTap()
        })
        .store(in: &cancellables)
    }
}
