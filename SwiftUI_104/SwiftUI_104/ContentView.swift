//
//  ContentView.swift
//  SwiftUI_104
//
//  Created by Dương Trung Thành on 14/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfPips: Int = 1
        
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(width: 100, height: 100)
            
            Button("Roll") {
                numberOfPips = Int.random(in: 1...6)
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    ContentView()
}
