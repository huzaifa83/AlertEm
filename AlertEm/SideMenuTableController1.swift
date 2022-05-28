//
//  SideMenuTableController.swift
//  
//
//  Created by Shubham meher on 18/05/22.
//

import UIKit
import SideMenu

class SideMenuTableController1: UITableViewController {
    
    @IBOutlet var MenuTableView: UITableView!
    var LogoImg = ["Profile","NotificationBellBlack","Settings","FAQs","Help","About","Disclaimer","Termandcondition","home"]
    var names = ["Profile","Notification Bell","Settings","FAQs","Help","About","Disclaimer","Termandcondition","home"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello")
        MenuTableView.dataSource = self
        MenuTableView.dataSource = self
        
        MenuTableView.backgroundColor = UIColor.lightGray

        // Uncomment the following line to preserve selection between presentations
       self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
       // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

//     MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return items.count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OptionName", for: indexPath) as! MenuTableViewCell1
        cell.backgroundColor = UIColor.lightGray
        cell.MenuIconImages.image = UIImage(named: self.LogoImg[indexPath.row])
        cell.MenuIconsNames.text = names[indexPath.row]
        
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("this is the row number you have selected \(indexPath.row)")
        
        let selectedOption = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController1
        navigationController?.pushViewController(selectedOption, animated: true)
        return
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}






// THIRD PARTY POD INSTRUCTIONS

/*
// Override to support conditional editing of the table view.
override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
}
*/

/*
// Override to support editing the table view.
override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
        // Delete the row from the data source
        tableView.deleteRows(at: [indexPath], with: .fade)
    } else if editingStyle == .insert {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}
*/

/*
// Override to support rearranging the table view.
override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

}
*/

/*
// Override to support conditional rearranging of the table view.
override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
}
*/

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
