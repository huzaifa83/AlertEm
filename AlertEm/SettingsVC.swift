//
//  SettingsVC.swift
//  AlertEm
//
//  Created by Huzaifa Gadiwala on 2/6/22.
//

import UIKit

class SettingsVC: UIViewController {

    
    @IBOutlet weak var whiteView: UIView!
    
    @IBOutlet weak var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        whiteView.layer.cornerRadius = whiteView.frame.size.width/2
        
        whiteView.layer.shadowColor = UIColor.black.cgColor
        whiteView.layer.shadowOpacity = 0.75
        whiteView.layer.shadowOffset = CGSize(width: 1, height: 1)
       // whiteView.layer.shadowRadius = 1
        
        redView.layer.cornerRadius = redView.frame.size.width/2

        
    }
    
    @IBAction func selectContactsBtnPress(_ sender: UIButton) {
    
        let vc = storyboard?.instantiateViewController(withIdentifier: "contactsTvViewController") as! contactsTvViewController
        
        navigationController?.pushViewController(vc, animated: true)
    
    }
    
    

   
}
