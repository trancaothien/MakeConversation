//
//  ChatInputBar.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 17/4/25.
//

import SwiftUI
import PhotosUI

struct ChatInputBar: View {
    
    @Binding var newMessage: String
    @Binding var confident: Bool
    
    @State private var isExpanded: Bool = false
    @State private var photosItem: PhotosPickerItem?
    @State private var selectedItem: UIImage?
    
    var action: () -> Void
    
    
    var body: some View {
        HStack {
            HStack{
                if isExpanded {
                    //pick item to send image as message
                    PhotosPicker(
                        selection: $photosItem,
                        matching: .images,
                        photoLibrary: .shared()
                    ) {
                        Image(systemName: "photo.fill")
                            .frame(width: 24, height: 24)
                            .foregroundColor(.blue)
                            .scaledToFit()
                    }
                    .onChange(of: photosItem) {
                        Task {
                            if let data = try await photosItem?.loadTransferable(type: Data.self) {
                                let uiImage = UIImage(data: data)
                                selectedItem = uiImage
                            }
                        }
                    }
                    
                    Button(action: { print("Microphone") }) {
                        Image(systemName: "microphone.fill")
                            .frame(width: 24, height: 24)
                            .foregroundColor(.blue)
                            .scaledToFit()
                    }
                } else {
                    //Main Floating Action Button
                    Button(action: {
                        withAnimation(.spring()) {
                            isExpanded.toggle()
                        }
                    }) {
                        Image(.moreActionInChatIcon)
                            .frame(width: 24, height: 24)
                            .foregroundColor(isExpanded ? .red : .blue)
                    }
                }
                
            }
            
            
            TextField("Type here", text: $newMessage)
                .padding(6)
                .background(Color.neutral)
                .cornerRadius(4)
                .onChange(of: newMessage) {
                    withAnimation(.spring()) {
                        isExpanded = false
                    }
                    
                }
            Button {
                action()
                confident.toggle()
                
            } label: {
                Image(.sentMessageIcon).frame(width: 24, height: 24)
            }
        }
        .padding()
        .background(.white)
    }
}

struct ItemButton: View {
    var iconName: String
    
    var body: some View {
        ZStack {
            Image(systemName: "\(iconName)")
                .frame(width: 24, height: 24)
                .foregroundColor(.blue)
        }
    }
}

//#Preview {
//    ChatInputBar()
//}
