//
//  ContentView.swift
//  SwiftUI_TextField
//
//  Created by Dương Trung Thành on 14/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text: String = ""
    @State private var password: String = ""
    @State private var plaholderText: String = ""
    @State private var numberPhone: String = ""
    @State private var email: String = ""
    @State private var website: String = ""
    @State private var soThapPhan: String = ""
    @State private var search: String = ""

    
    var body: some View {
        ScrollView {
            VStack {
                Text("Thông tin đã nhâp \(text.count)")
                    .font(.headline)
                TextField("Nhập thông tin tại đây ...", text: $text)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Divider()
                
                Text("Nhập mật khẩu")
                    .font(.headline)
                SecureField("Nhập mật khẩu ...", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Divider()
                
                Text("Nhập dữ liệu với nút xoá")
                    .font(.headline)
                ZStack {
                    TextField("Nhập dữ liệu tại đây", text: $plaholderText)
                        .padding(.leading, 10)
                        .padding(.trailing, 50)
                        .frame(height: 50)
                        .background(Color.green.opacity(0.2))
                    if !plaholderText.isEmpty {
                        Button(action: {
                            plaholderText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.red)
                                .padding()
                        }
                    }
                    
                }
                
                Divider()
                
                TextField("Nhập sđt", text: $numberPhone)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Divider()
                
                TextField("Nhập email", text: $email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Divider()
                
                TextField("Nhập link website", text: $website)
                    .keyboardType(.URL)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Divider()
                
                TextField("Nhập số thập phân", text: $soThapPhan)
                    .keyboardType(.decimalPad)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Divider()
                
                TextField("Nhập từ khoá tìm kiếm", text: $search)
                    .keyboardType(.webSearch)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
            }
            .padding()
        }
        .onTapGesture {
            // ẩn bàn phím khi chạm ra ngoài textfield
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

#Preview {
    ContentView()
}
