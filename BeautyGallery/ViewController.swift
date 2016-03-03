//
//  ViewController.swift
//  BeautyGallery
//
//  Created by chon on 16/2/26.
//  Copyright © 2016年 chon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    let girls = ["女人","范冰冰","李冰冰","王菲","杨幂","周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Segue的identifier
        if segue.identifier == "GallerySegue" {
            let selectedIndex = beautyPicker.selectedRowInComponent(0)
            let vc = segue.destinationViewController as! GalleryController
            
            vc.index = selectedIndex
            
            switch selectedIndex {
            case 0:
                vc.imageName = "lu"
            case 1:
                vc.imageName = "fanbingbing"
            case 2:
                vc.imageName = "libingbing"
            case 3:
                vc.imageName = "wangfei"
            case 4:
                vc.imageName = "yangmi"
            case 5:
                vc.imageName = "zhouxun"
            default:
                vc.imageName = nil
            }
            
        }
    }

    @IBAction func close(segue: UIStoryboardSegue) {
        print("exit")
        let vc = segue.sourceViewController as! GalleryController
        
        // 从目标segue携带数据回来
        print(vc.testStr)
    }

}

