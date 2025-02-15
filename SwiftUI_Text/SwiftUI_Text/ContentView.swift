//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by Dương Trung Thành on 14/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Text("Text - đơn giản")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(10)
                
                Divider()
                
                Text("Văn bản với kích thuocws và màu sắc tuỳ chỉnh")
                    .font(.title2)
                    .foregroundColor(.blue)
                
                Divider()
                
                Text("Chữ đậm và nghiêng")
                    .italic()
                    .foregroundColor(.red)
                    .font(.system(size: 20, weight: .bold, design: .default))
                
                Text("""
                    Đây là một ví dụ về cách sử dụng Text
                    với nhiều dòng trong Swift
                    hihi haha
                """)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
                .background(Color.yellow.opacity(0.3))
                
                Divider()
                
                // kết hợp nhiều Text trong 1 dòng
                Text("Bạn có thể kết hợp") +
                Text(" nhiều text").bold().foregroundColor(.green)
                
                Divider()
                
                Text("Văn bản có gạch chân và gạch ngang")
                    .underline()
                    .strikethrough()
                    .kerning(2)
                
                Text("Tiêu đề lơn").font(.largeTitle)
                Text("Tiếu đề phụ").font(.subheadline).foregroundColor(.gray)
                
                Divider()
                
                let gradient = LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                Text("Hiệu ứng gradient cho văn bản")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .overlay(gradient
                        .mask(
                            Text("Hiệu ứng gradient cho văn bản")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        )
                    )
                
                Divider()
                
                Text("Tuỳ chỉnh font chữ")
                    .font(.custom("Courier", size: 30))
                
                Divider()
                
                Text("Văn bản có kích thước động")
                    .font(.body)
                
                Divider()
                
                Text("Điều chỉnh kích thước giữa các ký tự")
                    .kerning(10)
            }
        }
    }
}

#Preview {
    ContentView()
}
