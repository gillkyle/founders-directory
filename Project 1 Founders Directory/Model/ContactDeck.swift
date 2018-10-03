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
        Contact(name: "Chewie Wookie", companyName: "Rebel Alliance", phone: 8015551212, phoneUnlisted: false, email: "chewie@gmail.com", emailUnlisted: false, spouseName: "", businessProfile: "Chewbacca, nicknamed \"Chewie\", is a fictional character in the Star Wars franchise. He is a Wookiee, a tall, hirsute biped and intelligent species from the planet Kashyyyk. Chewbacca is the loyal friend and associate of Han Solo, and serves as co-pilot on Solo's ship, the Millenium Falcon.", photoUrl: "founder1.png"),
        Contact(name: "Leia Organa", companyName: "Rebel Alliance", phone: 3855551212, phoneUnlisted: false, email: "leia@gmail.com", emailUnlisted: false, spouseName: "Han Solo", businessProfile: "Son of rebel leader Bale Organa, fearless rebel icon known for her anti-empire views.", photoUrl: "founder2.png"),
        Contact(name: "Han Solo", companyName: "Bounty Hunter", phone: 3855551234, phoneUnlisted: false, email: "han@gmail.com", emailUnlisted: false, spouseName: "Leia Organa", businessProfile: "Rogue bounty hunter, wanted by Jabba the Hutt. Flies the fastest ship in the galaxy.", photoUrl: "founder3.png"),
        Contact(name: "Luke Skywalker", companyName: "Rebel Alliance", phone: 8015554567, phoneUnlisted: false, email: "luke@gmail.com", emailUnlisted: false, spouseName: "", businessProfile: "The chosen one, strong in the force, son of an important galactic figure.", photoUrl: "founder4.png")
    ]
    
    static let sharedInstance = ContactDeck()
    
}
