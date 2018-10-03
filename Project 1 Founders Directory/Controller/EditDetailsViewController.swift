//
//  EditDetailsViewController.swift
//  Project 1 Founders Directory
//
//  Created by Kyle Gill on 10/2/18.
//  Copyright © 2018 Kyle Gill. All rights reserved.
//

import UIKit

class EditDetailsViewController : UITableViewController {
    
    var founder: Contact?

    // View Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    // UI Helper Functions
    private func updateUI() {
        if let selectedContact = founder {
//            displayImage(selectedContact)

//            nameLabel.text = "\(selectedContact.name)"
//            companyLabel.text = "\(selectedContact.companyName)"
//            phoneLabel.text = "\(selectedContact.phone)"
//            emailLabel.text = "\(selectedContact.email)"
//            descriptionLabel.text = "\(selectedContact.businessProfile)"
//            spouseLabel.text = "\(selectedContact.spouseName ?? "N/A")"
        }
    }
    
    @IBAction func showEdit(_ sender: Any) {
        print(sender)
    }
}
