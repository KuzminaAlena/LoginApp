//
//  User.swift
//  LoginApp
//
//  Created by Алена on 22.11.2021.
//

import Foundation

struct User {
    var login: String
    var password: String
    var namePerson: Person
    
   static func getUserData() -> User {
        User(
            login: "Alena",
            password: "1234",
            namePerson: Person(name: "Alena", secondName: "Kuzmina")
            
        )
    }
}

struct Person {
    var name: String
    var secondName: String
    
    var fullName: String {
        return name.self + " " + secondName.self
    }
}

