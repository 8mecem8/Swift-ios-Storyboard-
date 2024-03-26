//
//  ViewController.swift
//  iLight
//
//  Created by Student on 3/25/24.
//

import UIKit

class indexVC: UIViewController 
{
    var isLighton = false
    
    @IBOutlet var mainButton: UIButton!
    
    
    override func viewDidLoad() {super.viewDidLoad();updateUI();}

    fileprivate func updateUI() {
        if !isLighton {
            mainButton.setTitle("ON", for: .normal);
            return view.backgroundColor = UIColor.black};
        
        mainButton.setTitle("OFF", for: .normal);
        return view.backgroundColor = UIColor.white;
    }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        isLighton.toggle();
        return updateUI();
    }
    

}


