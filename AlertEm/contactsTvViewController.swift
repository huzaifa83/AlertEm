//
//  contactsTvViewController.swift
//  AlertEm
//
//  Created by JUILEE SALI on 17/05/22.
//

import UIKit

class contactsTvViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var check = true
    @IBOutlet weak var tableV: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! customTableViewCell
        cell.nameLbl.text = "Name"
        return cell
    }
    
    
    @IBAction func PrcheckBtn(_ sender: UIButton) {
        print("Hello")
                
        check.toggle()
        print(check)
        if check == false {
            let image = UIImage(named: "Check")
            sender.setImage(image, for: .normal)
        }
        else {
            
            let image = UIImage(named: "Uncheck")
            sender.setImage(image, for: .normal)
        }
    
    }
    
   

}
