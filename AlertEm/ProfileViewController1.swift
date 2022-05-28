//
//  ProfileViewController.swift
//  
//
//  Created by Shubham meher on 19/05/22.
//

import UIKit

class ProfileViewController1: UIViewController {

    var editbuttonToggle : Bool = false

   
    
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var DesignationLbl: UILabel!
    @IBOutlet weak var MobileNumberLbl: UILabel!
    @IBOutlet weak var EmailIdLbl: UILabel!
    @IBOutlet weak var Addresslbl: UILabel!
    
    @IBOutlet weak var AddressTextField: UITextField!
    @IBOutlet weak var EmailIdTextField: UITextField!
    @IBOutlet weak var MobileNumberTextField: UITextField!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var EditAndSavebutton: UIButton!
    @IBOutlet weak var DesinationTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello")

        EditAndSavebutton.setTitle("EDIT", for: .normal)
        navigationController?.setNavigationBarHidden(false, animated: true)
        //navigationController?.set
    }

    @IBAction func EditSaveBTN(_ sender: UIButton) {
        print("edit button clicked")
        
     editbuttonToggle = !editbuttonToggle
                 print(editbuttonToggle)
         print("clicked")
         if editbuttonToggle == false {
         TextFieldDeactive()
             
             LblColor1()
             EditAndSavebutton.setTitle("EDIT", for: .normal)
             EditAndSavebutton.titleLabel?.font = UIFont(name: "System Bold", size: 24)
         }else if editbuttonToggle == true {
             TextFieldActive()
             LblColor()
             EditAndSavebutton.setTitle("SAVE CHANGES", for: .normal)
         }

        
        
        
//        if sender.isEnabled == true{
//            EditAndSavebutton.setTitle("SAVE CHANGES", for: .normal)
//            NameTextField.isEnabled = false
//        }
//        else if NameTextField.isEnabled == false && sender.isEnabled == true{
//            EditAndSavebutton.setTitle("EDIT", for: .normal)
//            NameTextField.isEnabled = true
//        }
//
        
    
    }
    func TextFieldActive(){
        NameTextField.textColor = UIColor.red
        MobileNumberTextField.textColor = UIColor.red
        AddressTextField.textColor = UIColor.red
        EmailIdTextField.textColor = UIColor.red
        DesinationTextField.textColor = UIColor.red
        
        NameTextField.isUserInteractionEnabled = true
        MobileNumberTextField.isUserInteractionEnabled = true
        AddressTextField.isUserInteractionEnabled = true
        EmailIdTextField.isUserInteractionEnabled = true
        DesinationTextField.isUserInteractionEnabled = true
        
         NameTextField.isEnabled = true
       MobileNumberTextField.isEnabled = true
        AddressTextField.isEnabled = true
        EmailIdTextField.isEnabled = true
        DesinationTextField.isEnabled = true
     }
     func TextFieldDeactive(){
         NameTextField.textColor = UIColor.black
         MobileNumberTextField.textColor = UIColor.black
         AddressTextField.textColor = UIColor.black
         EmailIdTextField.textColor = UIColor.black
         DesinationTextField.textColor = UIColor.black

         
         NameTextField.isUserInteractionEnabled = false
         MobileNumberTextField.isUserInteractionEnabled = false
         AddressTextField.isUserInteractionEnabled = false
         EmailIdTextField.isUserInteractionEnabled = false
        DesinationTextField.isUserInteractionEnabled = false
         
         NameTextField.isEnabled = false
        MobileNumberTextField.isEnabled = false
        AddressTextField.isEnabled = false
       EmailIdTextField.isEnabled = false
        DesinationTextField.isEnabled = false
     }
    func LblColor(){
        NameLbl.textColor = UIColor.red
        MobileNumberLbl.textColor = UIColor.red
        Addresslbl.textColor = UIColor.red
        EmailIdLbl.textColor = UIColor.red
        DesignationLbl.textColor = UIColor.red
    }
    func LblColor1(){
        NameLbl.textColor = UIColor.black
        MobileNumberLbl.textColor = UIColor.black
        Addresslbl.textColor = UIColor.black
        EmailIdLbl.textColor = UIColor.black
        DesignationLbl.textColor = UIColor.black
    }

}
