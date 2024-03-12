//
//  DetailsForColorsVC.swift
//  test_Project_Colors
//
//  Created by Student on 3/8/24.
//

import UIKit

class DetailsForColorsVC: UIViewController 
{
    var color: UIColor?

    override func viewDidLoad()
    {
        super.viewDidLoad(); 
        view.backgroundColor = color ?? .blue
    }
    

    
}
