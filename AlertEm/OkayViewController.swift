//
//  OkayViewController.swift
//  AlertEm
//
//  Created by Huzaifa Gadiwala on 30/3/22.
//

import UIKit

class OkayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func OkayBtnPress(_ sender: UIButton) {
    
        let vc = storyboard?.instantiateViewController(withIdentifier: "loginViewController") as! loginViewController
        
//        present(vc, animated: true, completion: nil)
        navigationController?.pushViewController(vc, animated: true)
    
    }
    

}
