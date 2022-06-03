//
//  ContactsPopUpVC.swift
//  AlertEm
//
//  Created by JUILEE SALI on 03/06/22.
//

import UIKit

class ContactsPopUpVC: UIViewController {

    @IBOutlet weak var contactsLbl: UILabel!
    
    var message = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactsLbl.text = "You have sent your location: \(message)"
    }
    

    @IBAction func closePopUpBtnPress(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
