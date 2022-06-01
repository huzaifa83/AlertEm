//
//  safeVC.swift
//  AlertEm
//
//  Created by Huzaifa Gadiwala on 31/5/22.
//

import UIKit

class safeVC: UIViewController {

    
    @IBOutlet weak var popView: UIView!
    
    
    @IBOutlet weak var yesBtn: UIButton!

    @IBOutlet weak var noBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Make buttons round
        yesBtn.layer.cornerRadius = yesBtn.frame.size.width/2

        noBtn.layer.cornerRadius = noBtn.frame.size.width/2
        
        popView.layer.cornerRadius = 10
    }
    
    
    @IBAction func yesBtnPress(_ sender: UIButton) {
    
        dismiss(animated: true, completion: nil)
    
    }
    
    
    @IBAction func noBtnPress(_ sender: UIButton) {
    }
    
    

   
}
