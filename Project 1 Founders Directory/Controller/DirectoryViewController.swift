//
//  DirectoryViewController.swift
//  Project 1 Founders Directory
//
//  Created by Kyle Gill on 9/21/18.
//  Copyright © 2018 Kyle Gill. All rights reserved.
//

import UIKit

class DirectoryViewController : UITableViewController {
    // Constants
    private struct Storyboard {
        static let ContactCellIdentifier = "ContactCell"
        static let ShowContactSegueIdentifier = "ShowContact"
    }
    
    // Properties
    var selectedContact: Contact?
    
    // Table View Data Source
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.ContactCellIdentifier, for: indexPath)
        
        cell.textLabel?.text = ContactDeck.sharedInstance.contacts[indexPath.row].name.capitalized
        cell.detailTextLabel?.text = ContactDeck.sharedInstance.contacts[indexPath.row].companyName.capitalized
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactDeck.sharedInstance.contacts.count
    }
    
    // Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedContact = ContactDeck.sharedInstance.contacts[indexPath.row]
        performSegue(withIdentifier: Storyboard.ShowContactSegueIdentifier, sender: self)
    }
}
