//
//  ViewController.swift
//  Photo Demo
//
//  Created by 李宝明 on 16/8/26.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var importBtn: UIButton!
    
    @IBAction func onImportBtn(_ sender: AnyObject) {
        
        
        
        let imgPickerController = UIImagePickerController()
        imgPickerController.delegate = self
        
        imgPickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        imgPickerController.allowsEditing = false
        
        self.present(imgPickerController, animated: true, completion: nil)
        
        
        
        
    }
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            self.imageView.image = image
        }
        
        self.dismiss(animated: true, completion: nil)
    }

}

