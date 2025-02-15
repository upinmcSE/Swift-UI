//
//  ContentView.swift
//  SwiftUI_Toggle
//
//  Created by Dương Trung Thành on 15/2/25.
//

import SwiftUI

struct ContentView: View {
    
    // lưu trạng thái
    @State private var isToggleOn: Bool = false
    @State private var isDarkMode: Bool = false
    @State private var isNotification: Bool = true
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Text("Toggle đơn giản với nhãn mặc định").font(.headline)
                Toggle("Bật / Tắt", isOn: $isToggleOn).padding()
                
                Divider()
                
                Text("Toggle với nhãn tuỳ chỉnh (Chế độ tối: \(isDarkMode ? "Bật" : "Tắt"))")
                    .font(.headline)
                VStack {
                    Toggle(isOn: $isDarkMode){
                        Text("Chế độ tối")
                            .font(.headline)
                            .foregroundColor(isDarkMode ? .white : .black)
                    }
                    .padding()
                    .background(isDarkMode ? Color.black : Color.gray)
                }
                
                Divider()
                
                Text("Toggle với phần tử bổ sung và hành động").font(.headline)
                
                VStack {
                    HStack {
                        Toggle(isOn: $isNotification){
                            Label("Thông báo", systemImage: "bell")
                        }
                        .padding()
                    }
                    .foregroundColor(isNotification ? .green : .gray)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
