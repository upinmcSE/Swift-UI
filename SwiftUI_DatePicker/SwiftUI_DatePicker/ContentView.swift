//
//  ContentView.swift
//  SwiftUI_DatePicker
//
//  Created by Dương Trung Thành on 15/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedDate = Date()
    @State private var birthDate = Date()
    @State private var eventDate = Date()
    
    var body: some View {
        ScrollView{
            VStack(spacing: 30){
                Text("DatePicker đơn giản, chọn ngày").font(.headline)
                DatePicker("Ngày", selection: $selectedDate)
                    .datePickerStyle(GraphicalDatePickerStyle()) // Hiện thị dưới dạng lịch
                    .padding()
                Text("Ngày đã chọn: \(formatDate(selectedDate))")
                    .font(.subheadline)
                    .padding()
                
                Divider()
                
                Text("DatePicker giới hạn phạm vi").font(.headline)
                // giới hạn là ngày hiện tại
                DatePicker("Ngày sinh", selection: $birthDate, in: ...Date(), displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle()) // hiện thị dạng bánh xe
                    .padding()
                Text("Ngày đã chọn: \(formatDate(birthDate))")
                    .font(.subheadline)
                    .padding()
                
                Divider()
                
                Text("Chọn ngày và giờ").font(.headline)
                DatePicker("Ngày sự kiện", selection: $eventDate, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(CompactDatePickerStyle())
                    .padding()
                Text("Ngày đã chọn: \(formatDateTime(eventDate))")
                    .font(.subheadline)
                    .padding()
            }
            
            
        }
    }
    
    // định dạng lại ngày
    func formatDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: date)
    }
    
    // định dạng lại ngày giờ
    func formatDateTime(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        return dateFormatter.string(from: date)
    }
}

#Preview {
    ContentView()
}
