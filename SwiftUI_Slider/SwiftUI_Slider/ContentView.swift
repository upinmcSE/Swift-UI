//
//  ContentView.swift
//  SwiftUI_Slider
//
//  Created by Dương Trung Thành on 15/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var simpleSlider: Double = 0.5
    @State private var volume: Double = 50.0
    @State private var customSliderValue: Double = 0.5
    
    var body: some View {
        ScrollView{
            VStack(spacing: 30){
                Text("Slider đơn giản. Giá trị hiện tại: \(simpleSlider, specifier: "%.1f")").font(.headline)
                Slider(value: $simpleSlider).padding()
                
                Divider()
                
                Text("Điều chỉnh âm lượng (\(Int(volume)))").font(.headline)
                Slider(value: $volume, in: 0...100, step: 1)
                    .padding()
                    .accentColor(.green)
                
                Divider()
                
                VStack{
                    Text("Slider với giá trị giới hạn. Giá trị hiện tại: \(customSliderValue, specifier: "%.1f")").font(.headline)
                    Slider(value: $customSliderValue, in: 0...10, step: 0.5).padding()
                    HStack{
                        Text("Min: 0")
                        Spacer()
                        Text("Max: 10")
                    }
                    .padding(.horizontal)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
