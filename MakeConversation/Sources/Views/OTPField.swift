//
//  OTPField.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25.
//
//
//  OTPField.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25.
//

import SwiftUI

struct CustomizableOTPView: View {
    
    @Binding var otp: [String]
    @FocusState private var focusedIndex: Int?
    @State var length: Int
    
    init(otp: Binding<[String]>, length: Int = 6) {
        self._otp = otp
        self._length = State(initialValue: length)
    }
    
    var body: some View {
        HStack(spacing: 40) {
            ForEach(0..<length, id: \.self) { index in
                HStack {
                    if !otp[index].isEmpty {
                        Text(otp[index])
                            .applyHeader1Style()
                    } else {
                        Circle()
                            .fill(Color(UIColor(.neutral)))
                            .frame(width: 30, height: 30)
                    }
                }
                .frame(width: 32, height: 40)
                .background(Color.white)
                .clipShape(Circle())
                .focused($focusedIndex, equals: index)
                .onTapGesture { focusedIndex = index }
                .overlay(
                    TextField("", text: $otp[index])
                        .opacity(0)
                        .keyboardType(.numberPad)
                        .focused($focusedIndex, equals: index)
                        .onChange(of: otp[index]) { oldValue, newValue in
                            DispatchQueue.main.async {
                                handleOTPChange(index: index, newValue: newValue)
                            }
                        }
                )
            }
        }
        .onAppear {
            self.otp = Array(repeating: "", count: length)
        }
    }
    
    private func handleOTPChange(index: Int, newValue: String) {
        if newValue.count > 1 {
            otp[index] = String(newValue.prefix(1))
        }
        if !newValue.isEmpty, index < otp.count - 1 {
            focusedIndex = index + 1
        }
    }
}
