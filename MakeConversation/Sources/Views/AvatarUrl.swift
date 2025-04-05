//
//  AvatarUrl.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 5/4/25.
//

import SwiftUI

struct AvatarUrl: View {
    var url: String
    var size: CGFloat = 48
    
    var body: some View {
        AsyncImage(url: URL(string: url)) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
            case .failure:
                Rectangle()
                    .foregroundColor(.disable)
            @unknown default:
                Rectangle()
                    .foregroundColor(.disable)
            }
        }
        .frame(width: size, height: size)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    AvatarUrl(url: "https://gravatar.com/avatar/936c959ca22aa95e9ade5c675ffaf6a0?s=400&d=robohash&r=x")
}
