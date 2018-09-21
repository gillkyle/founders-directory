//
//  ContactDeck.swift
//  Project 1 Founders Directory
//
//  Created by Kyle Gill on 9/21/18.
//  Copyright © 2018 Kyle Gill. All rights reserved.
//

import Foundation

class ContactDeck {
    let contacts = [
        Contact(name: "Chewie Wookiee", companyName: "Rebel Alliance", phone: 8015551212, phoneUnlisted: false, email: "chewie@gmail.com", emailUnlisted: false, spouseName: "", businessProfile: "Chewbacca, nicknamed \"Chewie\", is a fictional character in the Star Wars franchise. He is a Wookiee, a tall, hirsute biped and intelligent species from the planet Kashyyyk. Chewbacca is the loyal friend and associate of Han Solo, and serves as co-pilot on Solo's ship, the Millenium Falcon."),
        Contact(name: "Leia Organa", companyName: "Rebel Alliance", phone: 3855551212, phoneUnlisted: false, email: "leia@gmail.com", emailUnlisted: false, spouseName: "Ha n Solo", businessProfile: "Son of rebel leader Bale Organa, fearless rebel icon known for her anti-empire views.")
    ]
    
    static let sharedInstance = ContactDeck()
    
}
