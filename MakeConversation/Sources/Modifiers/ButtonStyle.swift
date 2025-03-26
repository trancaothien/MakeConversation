//
//  ButtonStyle.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25.
//

import SwiftUI

struct TextButtonStyle: ButtonStyle {
    var width: CGFloat
    var color: Color = .text
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.mulish(size: FontSize.size14, weight: .semibold))
            .frame(maxWidth: width)
            .padding()
            .foregroundColor(color)
    }
}

struct OutlinedButtonStyle: ButtonStyle {
    var borderColor: Color = .blue
    var width: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: width)
            .padding()
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(borderColor, lineWidth: 2)
            )
            .cornerRadius(30)
            .foregroundColor(borderColor)
            .opacity(configuration.isPressed ? 0.7 : 1.0) // Press effect
    }
}

struct FilledButtonStyle: ButtonStyle {
    var fillColor: Color = .branch
    var width: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.mulish(size: FontSize.size16, weight: .semibold))
            .frame(maxWidth: width)
            .padding()
            .background(fillColor)
            .foregroundColor(.white)
            .cornerRadius(30)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}
