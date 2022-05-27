//
//  OTPViewController.swift
//  AlertEm
//
//  Created by Huzaifa Gadiwala on 26/3/22.
//

import UIKit

class OTPViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitBtnPress(_ sender: UIButton) {
    
        let vc = storyboard?.instantiateViewController(withIdentifier: "OkayViewController") as! OkayViewController
//        present(vc, animated: true, completion: nil)
        navigationController?.pushViewController(vc, animated: true)
    
    
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
