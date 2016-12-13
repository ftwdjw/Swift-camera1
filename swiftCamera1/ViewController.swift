//
//  ViewController.swift
//  CameraApplication
//
//  Created by John Mac on 12/16/15.
//  Copyright © 2015 John Wetters. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {//begin
    
    let parkingPic = UIImage.init(named: "Parking")!
    
    @IBOutlet var imageView: UIImageView!
    
    

    override func viewDidLoad() {//begin
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = parkingPic
        
        
        
        
    }//end

    override func didReceiveMemoryWarning() {//begin
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//end
    
    @IBAction func chooseImageFromPhotoLibrary() {
        let image = UIImagePickerController()
        
        image.delegate = self
        image.sourceType = .photoLibrary
        present(image, animated: true, completion: {self.done()})
        
        
        print("choose existing photo")
    }
    
    
    @IBAction func chooseFromCamera(){
        //initialize UIImagePickerController
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        
        present(picker, animated: true, completion: nil)
        
        print("take photo with camera")

        
    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        
//        
//        //save image
//        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
//
//        
//        //let imageSave : UIImage = (info[UIImagePickerControllerOriginalImage] as? UIImage)!
//        
//        func UIImageWriteToSavedPhotosAlbum(_ image: "parkingPic", _ completionTarget: Any?, _ completionSelector: Selector?, _ contextInfo: UnsafeMutableRawPointer?)
//        {
//            
//        }
//        
//        
//        dismiss(animated: true, completion: nil)
//     
//    }
    
//    private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : Any]) {
//        
//        let theInfo:NSDictionary = info as NSDictionary
//        
//        let img:UIImage = (theInfo.object(forKey: UIImagePickerControllerOriginalImage) as! UIImage?)!
//        
//        imageView.image=img
//        
//        self.dismiss(animated: true, completion: nil)
//        
//    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Set photoImageView to display the selected image.
        imageView.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    func done(){
        print("this is a test")
    }
    
    

}//end

