//
//  ViewController.swift
//  AlertEm
//
//  Created by Huzaifa Gadiwala on 20/3/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let lbl = UILabel()
       
    }

    
    @IBAction func submitBtnPress(_ sender: UIButton) {
    
        let vc = storyboard?.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
//        present(vc, animated: true, completion: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

