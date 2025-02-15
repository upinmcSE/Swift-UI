//
//  ContentView.swift
//  SwiftUI_List
//
//  Created by Dương Trung Thành on 15/2/25.
//

import SwiftUI

struct Country: Identifiable{
    var id = UUID()// id duy nhất
    var flag: String
    var nameVietnamese: String
    var nameEnglish: String
    var area: String
}

struct ContentView: View {
    
    // nhấn control + command + space để mở emoji
    let countries = [
            Country(flag: "🇺🇸", nameVietnamese: "Hoa Kỳ", nameEnglish: "United States", area: "9,833,520 km²"),
              Country(flag: "🇻🇳", nameVietnamese: "Việt Nam", nameEnglish: "Vietnam", area: "331,212 km²"),
              Country(flag: "🇫🇷", nameVietnamese: "Pháp", nameEnglish: "France", area: "643,801 km²"),
              Country(flag: "🇯🇵", nameVietnamese: "Nhật Bản", nameEnglish: "Japan", area: "377,975 km²"),
              Country(flag: "🇨🇦", nameVietnamese: "Canada", nameEnglish: "Canada", area: "9,984,670 km²"),
              Country(flag: "🇬🇧", nameVietnamese: "Vương Quốc Anh", nameEnglish: "United Kingdom", area: "242,495 km²"),
              Country(flag: "🇧🇷", nameVietnamese: "Brazil", nameEnglish: "Brazil", area: "8,515,767 km²"),
              Country(flag: "🇦🇺", nameVietnamese: "Úc", nameEnglish: "Australia", area: "7,692,024 km²"),
              Country(flag: "🇮🇳", nameVietnamese: "Ấn Độ", nameEnglish: "India", area: "3,287,263 km²"),
              Country(flag: "🇷🇺", nameVietnamese: "Nga", nameEnglish: "Russia", area: "17,098,242 km²"),
              Country(flag: "🇨🇳", nameVietnamese: "Trung Quốc", nameEnglish: "China", area: "9,596,961 km²"),
              Country(flag: "🇦🇷", nameVietnamese: "Argentina", nameEnglish: "Argentina", area: "2,780,400 km²"),
              Country(flag: "🇩🇪", nameVietnamese: "Đức", nameEnglish: "Germany", area: "357,022 km²"),
              Country(flag: "🇮🇹", nameVietnamese: "Ý", nameEnglish: "Italy", area: "301,340 km²"),
              Country(flag: "🇪🇸", nameVietnamese: "Tây Ban Nha", nameEnglish: "Spain", area: "505,992 km²"),
              Country(flag: "🇲🇽", nameVietnamese: "Mexico", nameEnglish: "Mexico", area: "1,964,375 km²"),
              Country(flag: "🇸🇦", nameVietnamese: "Ả Rập Saudi", nameEnglish: "Saudi Arabia", area: "2,149,690 km²"),
              Country(flag: "🇪🇬", nameVietnamese: "Ai Cập", nameEnglish: "Egypt", area: "1,001,450 km²"),
              Country(flag: "🇰🇷", nameVietnamese: "Hàn Quốc", nameEnglish: "South Korea", area: "100,210 km²"),
              Country(flag: "🇿🇦", nameVietnamese: "Nam Phi", nameEnglish: "South Africa", area: "1,221,037 km²"),
              Country(flag: "🇹🇭", nameVietnamese: "Thái Lan", nameEnglish: "Thailand", area: "513,120 km²"),
              Country(flag: "🇳🇬", nameVietnamese: "Nigeria", nameEnglish: "Nigeria", area: "923,768 km²"),
              Country(flag: "🇳🇱", nameVietnamese: "Hà Lan", nameEnglish: "Netherlands", area: "41,543 km²")
    ]
    
    var body: some View {
        List(countries){ country in
            HStack{
                Text(country.flag).font(.largeTitle)
                
                VStack(alignment: .leading){
                    Text(country.nameVietnamese).font(.headline)
                    Text(country.nameEnglish).font(.subheadline)
                }
                
                Spacer()
                
                Text(country.area).font(.caption)
                    .foregroundColor(.blue)
            }
            .padding()
        }
        .listStyle(PlainListStyle()) // Bỏ khoảng trống mặc định ngoài list
    }
}

#Preview {
    ContentView()
}
