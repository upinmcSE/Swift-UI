//
//  ContentView.swift
//  SwiftUI_101
//
//  Created by Dương Trung Thành on 14/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello UpinmcSE")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 10))
            Text("Upinmoi")
                .background(Color.red, in: RoundedRectangle(cornerRadius: 10))
                .padding()
        }
        .padding()
    }
}

// 1. Hiểu được Text
// 2. hiểu được sự khác nhau giữa thứ tự của padding và background

#Preview {
    ContentView()
}
