//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    var imagePicker = UIImagePickerController()
    
    
    @IBOutlet weak var newImage: UIImageView!
    
    
@IBAction func photoLibraryTapped(_ sender: Any) {
    imagePicker.sourceType = .photoLibrary
    
    present(imagePicker, animated: true, completion: nil)
}
    @IBAction func cameraTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    
}
    @IBAction func albumTapped(_ sender: Any) {
        imagePicker.sourceType = .savedPhotosAlbum
        
        present(imagePicker, animated: true, completion: nil)
    }
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage]
            as? UIImage { newImage.image = selectedImage}
        
        imagePicker.dismiss(animated: true, completion: nil)
        }
    
}
