//
//  sendLocationVC.swift
//  AlertEm
//
//  Created by Mithilesh Mishra on 16/05/22.
//

import UIKit
import SideMenu

class sendLocationVC: UIViewController, UINavigationBarDelegate {
    
    
    @IBOutlet weak var nv_Item: UINavigationItem!
    
    @IBOutlet weak var navigation: UINavigationItem!
    @IBOutlet weak var NV: UINavigationBar!
    @IBOutlet weak var sendLcotion: UIButton!
    
    @IBOutlet weak var trigeerBtnRoundBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        addNavBarImage()
        navigationItem.hidesBackButton = true
        navigationController?.setNavigationBarHidden(true, animated: true)
            
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
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
    
    
    
    
    @IBAction func sendLocationBtnPress(_ sender: UIButton) {
    
//        let vc = storyboard?.instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
//        present(vc, animated: true, completion: nil)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "admin_GroupVC") as! admin_GroupVC
        present(vc, animated: true, completion: nil)
    
    }
    

    @IBAction func triggerBtnPress(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "safeVC") as! safeVC
       
        vc.modalTransitionStyle = .crossDissolve
        
        present(vc, animated: true, completion: nil)
    }
    
    
    // added bar item action button to show side menu
    @IBAction func SideMenuButton(_ sender: UIBarButtonItem) {
        print("side menu button clicked")
        let sideButton =  storyboard?.instantiateViewController(withIdentifier:"VC") as! SideMenuNavigationController
        present(sideButton, animated: true, completion: nil)
    }
}
