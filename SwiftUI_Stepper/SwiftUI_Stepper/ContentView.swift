//
//  ContentView.swift
//  SwiftUI_Stepper
//
//  Created by Dương Trung Thành on 15/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var stepValue: Int = 0
    @State private var quantity1: Int = 1
    @State private var quantity2: Int = 1
    
    var body: some View {
        ScrollView{
            VStack(spacing: 30){
                Text("Stepper đơn giản").font(.headline)
                Stepper("Giá trị hiện tại: \(stepValue)", value: $stepValue).padding()
                
                Divider()
                
                Text("Stepper với giá trị tối thiểu | tối đa").font(.headline)
                Stepper("Giá trị hiện tại: \(quantity1)", value: $quantity1, in: 1...10, step: 1).padding()
                
                Divider()
                
                Text("Stepper với giá trị tối thiểu | tối đa - cách khác").font(.headline)
                Stepper{
                    HStack{
                        Image(systemName: "cart")
                        Text("Số sản phẩm: \(quantity2)")
                    }
                }onIncrement: {
                    if quantity2 < 10 {
                        quantity2 += 1
                    }
                }onDecrement: {
                    if quantity2 > 1 {
                        quantity2 -= 1
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
