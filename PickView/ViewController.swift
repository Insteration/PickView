//
//  ViewController.swift
//  PickView
//
//  Created by Artem Karmaz on 12/21/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cityArray = ["Kyiv", "Dnipro", "Lviv", "Kharkov", "Odessa"]
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var cityPickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // delegate выолнение одного класса в другом
        self.cityPickerView.delegate = self // изменение внесение данных
        self.cityPickerView.dataSource = self // управление данных которые есть
        
    }
    
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // количество столбцов
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.cityArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.cityArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.textLabel.text = self.cityArray[row]
    }
    
}
