//
//  Account.swift
//  SwiftUI_List
//
//  Created by Dương Trung Thành on 15/2/25.
//

import Foundation

public struct Account: Identifiable, Codable {
    public let id: String
    let lastname: String
    let firstname: String
    let birthday: String
    let email: String?
    let address: String
    let avatar: String
    let createdAt: String
    
    // Ánh xạ giữa các thuộc tính của 1 đối tượng trong Swift và các từ khoá Json tương ứng
    
    enum CodingKeys: String, CodingKey {
        case id, lastname, firstname, birthday, email, address, avatar
        case createdAt = "created_at"
    }
}
