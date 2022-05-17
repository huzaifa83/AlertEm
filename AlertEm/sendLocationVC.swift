//
//  sendLocationVC.swift
//  AlertEm
//
//  Created by Mithilesh Mishra on 16/05/22.
//

import UIKit

class sendLocationVC: UIViewController, UINavigationBarDelegate {
    
    
    @IBOutlet weak var nv_Item: UINavigationItem!
    
    @IBOutlet weak var NV: UINavigationBar!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        addNavBarImage()
            
    }
    
    func addNavBarImage() {

           //Your logo url here
        let logo = UIImage(named: "Alertem Logo")
        
        NV?.backItem?.titleView = UIImageView(image: logo)
        
        var imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        imageView = UIImageView(image: logo)
        imageView.contentMode = .scaleAspectFit
        self.nv_Item.titleView = imageView
        
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
