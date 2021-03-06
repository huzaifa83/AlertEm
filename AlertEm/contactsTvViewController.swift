//
//  contactsTvViewController.swift
//  AlertEm
//
//  Created by JUILEE SALI on 17/05/22.
//

import UIKit

class contactsTvViewController: UIViewController {
    
    var contacts = ["Person 1", "Person 2", "Person 3", "Person 4", "Person 5", "Person 6", "Person 7", "Person 8", "Person 9", "Person 10", "Person 11", "Person 12" ]
    
    var selectedContacts = ""
    
    var check = true
    @IBOutlet weak var tableV: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
  
    
    
    @IBAction func PrcheckBtn(_ sender: UIButton) {
//        print("Hello")
//
//        check.toggle()
//        print(check)
//        if check == false {
//            let image = UIImage(named: "Check")
//            sender.setImage(image, for: .normal)
//        }
//        else {
//
//            let image = UIImage(named: "Uncheck")
//            sender.setImage(image, for: .normal)
//        }
//
    }
    
    
    @IBAction func sendContactsBtnPress(_ sender: UIButton) {
    
       
        
        selectedContacts.removeAll()
        if let selectedRows = tableV.indexPathsForSelectedRows {
            
            for iPath in selectedRows {
                selectedContacts.append("\(contacts[iPath.row]) , ")
            }
            
            for item in selectedContacts {
                let vc = storyboard?.instantiateViewController(withIdentifier: "ContactsPopUpVC") as! ContactsPopUpVC
                vc.modalPresentationStyle = .popover
                vc.message = selectedContacts
                //vc.modalTransitionStyle = .crossDissolve
                print("You have sent your location: \(selectedContacts)")
                present(vc, animated: true, completion: nil)
            }
            
        }
        
    
    
    }
    
    
    
    
}

extension contactsTvViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! customTableViewCell
        
        cell.nameLbl.text = contacts[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableV.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        tableV.cellForRow(at: indexPath)?.accessoryType = .none
    
    }
    
    
}
