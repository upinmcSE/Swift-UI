//
//  ContentViewAPI.swift
//  SwiftUI_List
//
//  Created by Dương Trung Thành on 15/2/25.
//

import SwiftUI

struct ContentViewAPI: View {
    @ObservedObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.accounts){account in
                HStack{
                    AsyncImage(url: URL(string: account.avatar)){ image in
                            image.resizable()
                            .scaledToFit()
                        
                    }placeholder: {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.gray)
                    }
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("\(account.lastname) \(account.firstname)").font(.headline)
                            
                            Spacer()
                            
                            Text("\(account.birthday)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Text("\(account.address)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    
                }
            }
            .onAppear(){
                viewModel.fetchData()
            }
            .navigationTitle("Danh sách tài khoản")
        }
    }
}

#Preview {
    ContentViewAPI()
}
