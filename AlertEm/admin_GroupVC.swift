//
//  admin_GroupVC.swift
//  AlertEm
//
//  Created by Mithilesh Mishra on 16/05/22.
//

import UIKit

class admin_GroupVC: UIViewController {

    
    
    @IBOutlet weak var NV: UINavigationBar!
    
    
    @IBOutlet weak var nv_Item: UINavigationItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()

    }
    

    func addNavBarImage() {

            //Your logo url here
        // Add the image to constant "logo"
        let logo = UIImage(named: "Alertem Logo")
        // Add the logo to NV's titleView
        NV?.backItem?.titleView = UIImageView(image: logo)
        
        // Create the imageView
        var imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
       // Add the logo image to the ImageView
        imageView = UIImageView(image: logo)
        // the contentMode for used for image logo
        imageView.contentMode = .scaleAspectFit
        // adding the imageView to navigation item
        self.nv_Item.titleView = imageView
        
    }
}
