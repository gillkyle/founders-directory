//
//  EditDetailsViewController.swift
//  Project 1 Founders Directory
//
//  Created by Kyle Gill on 10/2/18.
//  Copyright © 2018 Kyle Gill. All rights reserved.
//

import UIKit

class EditDetailsViewController : UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // Properties
    var founder: Contact?
    let imagePicker = UIImagePickerController()

    // View Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        
        updateUI()
    }
    
    // Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var companyNameField: UITextField!
    @IBOutlet weak var phoneLabel: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var spouseField: UITextField!
    
    
    // UI Helper Functions
    private func updateUI() {
        if let selectedContact = founder {
            displayImage(selectedContact)

            nameField.text = "\(selectedContact.name)"
            companyNameField.text = "\(selectedContact.companyName)"
            phoneLabel.text = "\(selectedContact.phone)"
            emailField.text = "\(selectedContact.email)"
            descriptionField.text = "\(selectedContact.businessProfile)"
            spouseField.text = "\(selectedContact.spouseName ?? "N/A")"
        }
    }
    
    private func displayImage(_ founder: Contact) {
        if let imageUrl = UIImage(named: "\(founder.photoUrl ?? "unknown.png")") {
            self.imageView.image = imageUrl
            self.imageView.applyBorder(width: 1.0)
            self.imageView.applyCircleMask(radius: 6)
        }
    }
    
    // Actions
    @IBAction func uploadImage(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func takePicture(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    // MARK: - UIImagePickerControllerDelegate Methods
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        imageView.image = selectedImage
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
