//
//  ContactDetailsViewController.swift
//  Project 1 Founders Directory
//
//  Created by Kyle Gill on 9/21/18.
//  Copyright © 2018 Kyle Gill. All rights reserved.
//

import UIKit
import MessageUI

class ContactDetailsViewController : UITableViewController {
    // Constants
    private struct Storyboard {
        static let ShowEditSegueIdentifier = "EditContact"
    }
    
    // Properties
    var founder: Contact?
    
    // View Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // don't show edit button for users that aren't Chewie
        if let selectedContact = founder {
            if selectedContact.name != "Chewie Wookie" {
                editBtn.title = ""
            }
        }
        
        updateUI()
    }
    
    // Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    @IBOutlet weak var spouseLabel: UILabel!
    
    @IBOutlet weak var editBtn: UIBarButtonItem!
    
    // UI Helper Functions
    private func updateUI() {
        if let selectedContact = founder {
            displayImage(selectedContact)
            
            nameLabel.text = "\(selectedContact.name)"
            companyLabel.text = "\(selectedContact.companyName)"
            phoneLabel.text = "\(selectedContact.phone)"
            emailLabel.text = "\(selectedContact.email)"
            descriptionLabel.text = "\(selectedContact.businessProfile)"
            spouseLabel.text = "\(selectedContact.spouseName ?? "N/A")"
        }
    }
    
    private func displayImage(_ founder: Contact) {
        if let imageUrl = UIImage(named: "\(founder.photoUrl ?? "unknown.png")") {
                self.imageView.image = imageUrl
            self.imageView.applyBorder(width: 1.0)
            self.imageView.applyCircleMask(radius: 6)
        }
    }
    
    // Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navVC = segue.destination as? UINavigationController {
            if let editVC = navVC.viewControllers.first as? EditDetailsViewController {
                if let selectedContact = sender as? Contact {
                    editVC.founder = selectedContact
                }
            }
        }
    }
    
    // Actions
    @IBAction func makeCall(sender: AnyObject) {
        if let selectedContact = founder {
            guard let number = URL(string: "tel://\(selectedContact.phone)") else { return }
            UIApplication.shared.open(number)
        }
    }
    
    @IBAction func sendText(_ sender: Any) {
        if let selectedContact = founder {
            if MFMessageComposeViewController.canSendText() {
                let messageComposeViewController = MFMessageComposeViewController()
                present(messageComposeViewController, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func sendEmail(_ sender: Any) {
        if let selectedContact = founder {
            guard let email = URL(string: "mailto:\(selectedContact.email)") else { return }
            UIApplication.shared.open(email, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func tapEdit(_ sender: Any) {
        if let selectedContact = founder {
            performSegue(withIdentifier: Storyboard.ShowEditSegueIdentifier, sender: selectedContact)
        }
        
    }
}
