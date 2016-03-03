//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by chon on 16/2/26.
//  Copyright © 2016年 chon. All rights reserved.
//

import UIKit
import Social

class GalleryController: UIViewController {
    
    
    @IBOutlet weak var beautyImage: UIImageView!
    var imageName:String?
    
    var index:Int?
    let girls = ["女人","范冰冰","李冰冰","王菲","杨幂","周迅"]
    let testStr = "test"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beautyImage.contentMode = UIViewContentMode.ScaleAspectFit
        if let name = imageName {
            beautyImage.image = UIImage(named: name)
        }
        
        navigationItem.title = girls[index!]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        print("close 2")
    }
    
    @IBAction func shareTapped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        
        controller.setInitialText("分享文本")
        controller.addImage(beautyImage.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
}
