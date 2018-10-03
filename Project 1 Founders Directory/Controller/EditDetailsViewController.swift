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
    
    // Outlets
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var companyNameField: UITextField!
    @IBOutlet weak var phoneLabel: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var spouseField: UITextField!
    
    
    // UI Helper Functions
    private func updateUI() {
        if let selectedContact = founder {
//            displayImage(selectedContact)

            nameField.text = "\(selectedContact.name)"
            companyNameField.text = "\(selectedContact.companyName)"
            phoneLabel.text = "\(selectedContact.phone)"
            emailField.text = "\(selectedContact.email)"
            descriptionField.text = "\(selectedContact.businessProfile)"
            spouseField.text = "\(selectedContact.spouseName ?? "N/A")"
        }
    }
}
