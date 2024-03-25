//
//  CardSelectionVC.swift
//  GameCards_Project
//
//  Created by Student on 3/12/24.
//

import UIKit

class CardSelectionVC: UIViewController 
{
    //References of UI elements
    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var Buttons: [UIButton]!
    
    var cardsArray:[UIImage] = Card.allValues
    var timer: Timer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Style UI elements
        for item in Buttons{item.layer.cornerRadius = 18}
        
        StartTimer()
    }
    
    
    override func viewWillDisappear(_ animated: Bool) 
    {
        super.viewWillDisappear(animated)
        
        timer.invalidate()
    }
    
    
    func StartTimer()
    {
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage()
    {
        cardImageView.image = cardsArray.randomElement() ?? UIImage(named: "AS")!
    }
    
    
    // ---- UI element`s actions
    @IBAction func stopButtonTapped(_ sender: UIButton)
    {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) 
    {
        timer.invalidate()
        StartTimer()
        
    }
    
    
}
