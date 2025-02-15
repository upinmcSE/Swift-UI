//
//  AccountViewModel.swift
//  SwiftUI_List
//
//  Created by Dương Trung Thành on 15/2/25.
//

import Foundation

class AccountViewModel: ObservableObject {
    // biến lưu trữ danh sách tài khoản
    @Published var accounts: [Account] = []
    
    // lấy dữ liệu từ api
    func fetchData(){
        guard let url = URL(string: "https://data.stst.vn/tat-ca-tai-khoan.php") else { return }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            guard let data = data, error == nil else { return }
            
            // Phân tích JSON lấy được mà đổi thành Account
            do {
                let decodeData = try JSONDecoder().decode([Account].self, from: data)
                
                // Cập nhật dữ liệu vào accounts
                DispatchQueue.main.async {
                    self.accounts = decodeData
                }
            }catch {
                print("Lỗi phân tích dữ liệu JSON: \(error)")
            }
        }.resume()
    }
}
