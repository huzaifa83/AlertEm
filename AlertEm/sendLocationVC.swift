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
    @IBOutlet weak var sendLcotion: UIButton!
    
    @IBOutlet weak var trigeerBtnRoundBtn: UIButton!
    
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
//         let bellicon = UIImage(named: "Notification Bell")
//        NV?.backItem?.titleView = UIImageView(image: bellicon)
//        var imgv = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//        imgv = UIImageView(image: bellicon)
//        imgv.contentMode = .scaleAspectFit
//        self.nv_Item.titleView = imgv
        
        sendLcotion.backgroundColor = UIColor(displayP3Red: 189/255, green: 36/255, blue: 36/255, alpha: 1)
        trigeerBtnRoundBtn.layer.cornerRadius = trigeerBtnRoundBtn.frame.size.width / 2
        trigeerBtnRoundBtn.clipsToBounds = true
        trigeerBtnRoundBtn.backgroundColor = UIColor(displayP3Red: 189/255, green: 36/255, blue: 36/255, alpha: 1)
        trigeerBtnRoundBtn.setTitleColor(.white, for: .normal)
        trigeerBtnRoundBtn.setTitleColor(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), for: .normal)
        
        
    }
    

    @IBAction func triggerBtnPress(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "admin_GroupVC") as! admin_GroupVC
        present(vc, animated: true, completion: nil)
    }
    
}
