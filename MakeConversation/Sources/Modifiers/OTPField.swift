//
//  OTPField.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25.
//

import SwiftUI

struct OTPDigitView: View {
    @Binding var digit: String
    var isFocused: Bool
    
    var body: some View {
        Text(digit)
            .frame(width: 50, height: 50)
            .background(isFocused ? Color.blue.opacity(0.2) : Color.gray.opacity(0.1))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isFocused ? Color.blue : Color.gray, lineWidth: 2)
            )
            .font(.title)
            .multilineTextAlignment(.center)
            .animation(.spring(), value: isFocused)
    }
}

struct CrazyOTPView: View {
    @State private var otp: [String] = Array(repeating: "", count: 6)
    @FocusState private var focusedIndex: Int?
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<6, id: \ .self) { index in
                TextField("", text: $otp[index])
                    .frame(width: 50, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                    .keyboardType(.numberPad)
                    .focused($focusedIndex, equals: index)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(focusedIndex == index ? Color.blue : Color.gray, lineWidth: 2)
                    )
                    .onChange(of: otp[index]) { newValue in
                        if newValue.count > 1 {
                            otp[index] = String(newValue.prefix(1))
                        }
                        if !newValue.isEmpty, index < 5 {
                            focusedIndex = index + 1
                        }
                    }
            }
        }
        .padding()
    }
}

struct CustomizableOTPView: View {
    let length: Int
    let borderColor: Color
    let focusColor: Color
    
    @State private var otp: [String]
    @FocusState private var focusedIndex: Int?
    
    let size: CGFloat = 60  //circle's size
    
    init(length: Int = 6, borderColor: Color = .gray, focusColor: Color = .blue) {
        self.length = length
        self.borderColor = borderColor
        self.focusColor = focusColor
        self._otp = State(initialValue: Array(repeating: "", count: length))
    }
    
    var body: some View {
        HStack() {
            ForEach(0..<length, id: \ .self) { index in
                HStack {
                    if !otp[index].isEmpty {
                        Text(otp[index])
                            .foregroundColor(.black)
                            .useCustomStyle(size: FontSize.size32, color: .text, weight: .semibold)
                    } else {
                        Circle()
                            .fill(Color(uiColor: .otpCircle))
                            .frame(width: size * 0.4, height: size * 0.4)
                            
                    }
                }
                .frame(width: size, height: size)
                .background(Color.white)
                .clipShape(Circle())
                .focused($focusedIndex, equals: index)
                               .onTapGesture {
                                   focusedIndex = index
                               }
                .onTapGesture {
                                focusedIndex = index
                            }
                .overlay (
                    TextField("", text: $otp[index])
                        .opacity(0)
                        .keyboardType(.numberPad)
                        .focused($focusedIndex, equals: index)
                        .onChange(of: otp[index]) { newValue in
                            if newValue.count > 1 {
                                otp[index] = String(newValue.prefix(1))
                            }
                            if !newValue.isEmpty, index < length - 1 {
                                focusedIndex = index + 1
                            }
                        }
                )
            }
        }
        
    }
}

