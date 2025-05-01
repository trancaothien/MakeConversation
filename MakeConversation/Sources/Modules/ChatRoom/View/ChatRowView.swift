//
//  ChatRowView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 14/4/25.
//

import SwiftUI


struct ChatRowView: View {
    let chatMessage: MessageData
    let userData: UserData
    
    var body: some View {
        HStack {
            if chatMessage.sender == "\(userData.id)" {
                Spacer()
                
                MessageContent(chatMessage: chatMessage, userData: userData)
                    .background(Color(.branch))
                    .clipShape(CustomRoundedCorner(radius: 16, corners: [.topRight, .bottomLeft, .topLeft]))
                    .foregroundColor(.white)
            } else {
                MessageContent(chatMessage: chatMessage, userData: userData)
                    .background(Color.white)
                    .clipShape(CustomRoundedCorner(radius: 16, corners: [.topRight, .topLeft, .bottomRight]))
                    .foregroundColor(.primary)
                
                Spacer()
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
    }
}



struct CustomRoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct MessageContent: View {
    
    var chatMessage: MessageData
    let userData: UserData
    
    var body: some View {
        VStack(alignment: chatMessage.sender == "\(userData.id)" ? .trailing : .leading) {
            if chatMessage.mediaUrl != nil {
                AsyncImage(url: URL(string: chatMessage.mediaUrl!)) { image in
                    image.image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .clipShape(.rect(cornerRadius: 4))
                .padding(.bottom, 4)
            }
            

            Text(chatMessage.content)
                .padding(.bottom, 4)
            
            if chatMessage.sender == "\(userData.id)" {
                HStack() {
                    
                    Text("\(convertToHourMinute(from: chatMessage.createdAt) ?? "")")
                        .font(.caption2)
                }
            } else {
                Text("\(convertToHourMinute(from: chatMessage.createdAt) ?? "")")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        
    }
    
}
