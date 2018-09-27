//
//  ContactDetailsViewController.swift
//  Project 1 Founders Directory
//
//  Created by Kyle Gill on 9/21/18.
//  Copyright © 2018 Kyle Gill. All rights reserved.
//

import UIKit

class ContactDetailsViewController : UITableViewController {
    
    var founder: Contact?
    
    // Outlets
    @IBOutlet weak var nameLabel: UILabel!
    
    // UI Helper Functions
    private func updateUI() {
        if let selectedContact = founder {
//            displayImage(selectedContact)
            
            nameLabel.text = "\(selectedContact.name)"
        }
    }
    
//    private func displayImage(_ president: President) {
//
//        DispatchQueue.global(qos: .userInitiated).async {
//            if let imageUrl = URL(string: "\(Presidents.BaseUrl)\(president.thumbnailUrl)") {
//                let imageData = try? Data(contentsOf: imageUrl)
//
//                DispatchQueue.main.async {
//                    if let loadedImageData = imageData {
//                        self.imageView.image = UIImage(data: loadedImageData)
//                    }
//                }
//            }
//        }
//    }
    
    // Actions
    @IBAction func showContactDetails(_ segue: UIStoryboardSegue) {
        updateUI()
    }
    
    @IBAction func exitDetailsScene(_ segue: UIStoryboardSegue) {
        navigationController?.popViewController(animated: true)
    }
}
