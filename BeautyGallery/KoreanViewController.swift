//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by chon on 16/3/2.
//  Copyright © 2016年 chon. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    
    @IBAction func facebookTapped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("share Text")
        controller.addImage(beautyImage.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func twitterTapped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("share Text")
        controller.addImage(beautyImage.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func weiboTapped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("share Text")
        controller.addImage(beautyImage.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}
