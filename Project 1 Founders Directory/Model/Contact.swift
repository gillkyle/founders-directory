//
//  Contact.swift
//  Project 1 Founders Directory
//
//  Created by Kyle Gill on 9/21/18.
//  Copyright © 2018 Kyle Gill. All rights reserved.
//

import Foundation

class Contact {
    var name: String
    var companyName: String
    var phone: Int
    var phoneUnlisted: Bool
    var email: String
    var emailUnlisted: Bool
    var spouseName: String?
    var businessProfile: String
    // optional data
    // var yearJoined: Date
    // var status: StatusEnum
    
    init(name: String, companyName: String, phone: Int, phoneUnlisted: Bool, email: String, emailUnlisted: Bool, spouseName: String, businessProfile: String) {
        self.name = name
        self.companyName = companyName
        self.phone = phone
        self.phoneUnlisted = phoneUnlisted
        self.email = email
        self.emailUnlisted = emailUnlisted
        self.spouseName = spouseName
        self.businessProfile = businessProfile
    }
    
    
    
}
