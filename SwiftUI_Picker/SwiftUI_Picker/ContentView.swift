//
//  ContentView.swift
//  SwiftUI_Picker
//
//  Created by Dương Trung Thành on 15/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedFruit = "Táo"
    @State private var selectedQuantity = 1
    @State private var selectedColor = 1
    @State private var selectedDrink = "Nước"
    
    let fruits: [String] = ["Táo", "Cam", "Nho"]
    let colors: [String] = ["Đỏ", "Xanh dương", "Vàng", "Xanh lá"]
    let drinks: [String] = ["Nước", "Coca-Cola", "Pepsi"]
    
    var body: some View {
        ScrollView{
            VStack(spacing: 30){
                Text("Picker hiển thị dạng Segment")
                    .font(.headline)
                Picker("Trái cây", selection: $selectedFruit){
                    ForEach(fruits, id: \.self){
                        fruits in
                        Text(fruits)
                    }
                }
                .padding()
                .pickerStyle(SegmentedPickerStyle())
                Text("Đã chọn: \(selectedFruit)")
                
                Divider()
                
                Text("Picker hiển thị dạng Wheel").font(.headline)
                Picker("Số lượng", selection: $selectedQuantity){
                    ForEach(1...10, id: \.self){
                        number in
                        Text("\(number)").tag(number)
                    }
                }
                .padding()
                .pickerStyle(WheelPickerStyle())
                .frame(height: 150)
                Text("Đã chọn: \(selectedQuantity)")
                
                Divider()
                
                Text("Picker hiển thị dạng Menu").font(.headline)
                Picker("Màu sắc",selection: $selectedColor){
                    ForEach(0..<colors.count){
                        index in Text(colors[index]).tag(index)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()
                Text("Màu đã chọn: \(colors[selectedColor])")
                
                Divider()
                
                Text("Picker hiển thị dạng Inline").font(.headline)
                Picker("Thức uống", selection: $selectedDrink){
                    ForEach(drinks, id: \.self){
                        drink in Text(drink)
                    }
                }
                .pickerStyle(InlinePickerStyle())
                .padding()
                
                Text("Nước uống đã chọn: \(selectedDrink)")
                
            }
        }
    }
}

#Preview {
    ContentView()
}
