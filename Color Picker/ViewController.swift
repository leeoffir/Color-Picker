//
//  ViewController.swift
//  Color Picker
//
//  Created by Lee Offir on 4/18/18.
//  Copyright © 2018 Lee Offir. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var UILabel: UILabel!
    
    @IBOutlet weak var UIPicker: UIPickerView!
    
    let colorsTableArray =
        [Color(name:"Red", color: UIColor.red),
         Color(name:"Orange", color: UIColor.orange),
         Color(name:"Yellow", color: UIColor.yellow),
         Color(name:"Green", color: UIColor.green),
         Color(name:"Blue", color: UIColor.blue),
         Color(name:"Purple", color: UIColor.purple),
         Color(name:"Brown", color: UIColor.brown)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let index = 0
        pickerView(UIPicker, didSelectRow: index, inComponent: index)
        //sets the default color to red
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsTableArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsTableArray[row].name
    }
    
   func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    UILabel.text = colorsTableArray[row].name
    view.backgroundColor = colorsTableArray[row].color
    }
    
    
  


}

