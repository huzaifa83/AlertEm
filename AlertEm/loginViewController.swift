//
//  loginViewController.swift
//  AlertEm
//
//  Created by Mithilesh Mishra on 16/05/22.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        btn.backgroundColor = UIColor(displayP3Red: 189/255, green: 36/255, blue: 36/255, alpha: 1)
        
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnPress(_ sender: UIButton) {
        
        let vc  = storyboard?.instantiateViewController(withIdentifier: "sendLocationVC") as! sendLocationVC
       
//        present(vc, animated: true, completion: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
