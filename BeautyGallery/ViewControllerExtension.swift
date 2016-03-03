//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by chon on 16/2/26.
//  Copyright © 2016年 chon. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return girls.count
    }

}

extension ViewController:UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return girls[row]
    }
}