//
//  User.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 20/5/23.
//

import Foundation

struct User: Codable {
    var fullName: String?
    var userName: String?
    var email: String
    var password: String
    var dob: Date?
    var gender: String?
    var height: Float?
    var weight: Float?
}
