//
//  Constants.swift
//  GroceryApp
//
//  Created by Brenda Saavedra  on 31/05/23.
//

import Foundation

struct Constants {
    
    private static let baseUrlPath = "http://127.0.0.1:8080/api"
    
    struct Urls {
        static let register = URL(string:"\(baseUrlPath)/register")!
        static let login = URL(string:"\(baseUrlPath)/login")!
        
        static func saveGroceryCategory(userId: UUID) -> URL {
            return URL(string:"\(baseUrlPath)/users/\(userId)/grocery-categories")!
        }
        
        static func groceryCategoriesBy(userId: UUID) -> URL {
            return URL(string: "\(baseUrlPath)/users/\(userId)/grocery-categories")!
        }
        
        static func deleteGroceryCategory(userId: UUID, groceryCategoryId: UUID) -> URL {
            return URL(string: "\(baseUrlPath)/users/\(userId)/grocery-categories/\(groceryCategoryId)")!
        }
    }
    
    struct Defaults {
        static let authToken = "authToken"
        static let userId = "userId"
    }
    
    struct Endpoints {
        struct Login {
            static let username = "username"
            static let password = "password"
        }
    }
}
