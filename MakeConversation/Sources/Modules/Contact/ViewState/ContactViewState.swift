//
//  ContactViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class ContactViewState: ObservableObject, ContactViewStateProtocol {    
    private let id = UUID()
    private var presenter: ContactPresenterProtocol?
    
    //Data state
    @Published var searchText: String = ""
    @Published var contactData: [ContactData] = []
    
    func set(with presener: ContactPresenterProtocol) {
        self.presenter = presener
    }
    
    func viewDidLoad() {
        // Mock data
        let mock = [
            ContactData(
                avatarUrl: "https://avatar.iran.liara.run/public/girl",
                userName: "Raki Devon",
                lastActiveTime: "2025-04-08T10:44:00+0000",
                isOnline: false
            ),
            ContactData(
                avatarUrl: "https://i.pinimg.com/736x/97/bb/06/97bb067e30ff6b89f4fbb7b9141025ca.jpg",
                userName: "Athalia Putri",
                lastActiveTime: "2025-04-07T10:44:00+0000",
                isOnline: false
            ),
            ContactData(
                avatarUrl: "https://gravatar.com/avatar/20de6398e807f31bb3c5fbc3e7d84d2b?s=400&d=robohash&r=x",
                userName: "Raki Devon",
                lastActiveTime: "2025-04-05T10:44:00+0000",
                isOnline: false
            ),
            ContactData(
                avatarUrl: nil,
                userName: "Athalia Putri",
                lastActiveTime: "2025-04-05T10:44:00+0000",
                isOnline: true
            ),
            ContactData(
                avatarUrl: "https://gravatar.com/avatar/64f6c6355377ea4fb77fe5db3847f532?s=400&d=robohash&r=x",
                userName: "Athalia Putri",
                lastActiveTime: "2025-04-05T10:44:00+0000",
                isOnline: true
            ),
            ContactData(
                avatarUrl: nil,
                userName: "Raki Devon",
                lastActiveTime: "2025-04-08T10:44:00+0000",
                isOnline: false
            ),
            ContactData(
                avatarUrl: nil,
                userName: "Athalia Putri",
                lastActiveTime: "2025-04-07T10:44:00+0000",
                isOnline: true
            ),
            ContactData(
                avatarUrl: "https://avatar.iran.liara.run/public/girl",
                userName: "Athalia Putri",
                lastActiveTime: "2025-04-05T10:44:00+0000",
                isOnline: true
            ),
            ContactData(
                avatarUrl: "https://avatar.iran.liara.run/public",
                userName: "Raki Devon",
                lastActiveTime: "2025-04-05T10:44:00+0000",
                isOnline: false
            ),
            ContactData(
                avatarUrl: nil,
                userName: "Athalia Putri",
                lastActiveTime: "2025-04-05T10:44:00+0000",
                isOnline: true
            ),
            ContactData(
                avatarUrl: "https://avatar.iran.liara.run/public",
                userName: "Raki Devon",
                lastActiveTime: "2025-04-05T10:44:00+0000",
                isOnline: false
            )
        ]
        
        contactData = mock
    }
}
