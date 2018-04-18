//
//  Color.swift
//  Color Picker
//
//  Created by Lee Offir on 4/18/18.
//  Copyright © 2018 Lee Offir. All rights reserved.
//

import UIKit

struct Color {
    let name: String
    let color: UIColor
    
    init(name: String, color: UIColor)
    {
        self.name = name
        self.color = color
    }
}
