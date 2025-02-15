//
//  ContentView.swift
//  SwiftUI_Button
//
//  Created by Dương Trung Thành on 14/2/25.
//

import SwiftUI

struct ContentView: View {
    // trạng thái để theo dõi hành động người dùng
    @State private var isPressed = false
    @State private var actionCount = 0
    @State private var customButtonText = "Nút tuỳ chỉnh"
    
    var body: some View {
        VStack {
            Button("Nút đơn giản") {
                isPressed.toggle()
            }
            .padding()
            .background(isPressed ? Color.green : Color.yellow)
            .foregroundColor(.black)
            .cornerRadius(10)
            
            Divider()
            
            // Nút tuỳ chỉnh hình ảnh và văn bản
            Button {
                actionCount += 1
            } label: {
                HStack {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("Thích (\(actionCount))")
                }
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            // Nút với nhiều kiểu định dạng và font khách nhau
            Button(action: {
                print("Nút định dạng đặc biệt được ấn")
            }){
                Text("Nút định dạng đặc biệt")
                    .font(.headline)
                    .padding()
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing)
                    )
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5.0)
            }
            
            Divider()
            
            // Nút hình tròn
            Button(action: {
                print("Nút hình tròn được nhấn")
            }){
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(10)
                    .background(Color.red)
                    .foregroundColor(Color(.white))
                    .clipShape(Circle())
                    .shadow(radius: 5.0)
            }
            
            // Nút tuỳ chỉnh thay đổi trạng thái
            Button(customButtonText) {
                customButtonText = "Đã nhấn"
            }
            .font(.system(size: 18))
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Divider()
            
            Button("Nút bị vô hiệu hoá (disabled)"){
                
            }
            .padding()
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius(10)
            .disabled(true)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
