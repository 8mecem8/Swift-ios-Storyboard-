//
//  ColorsScreenVC.swift
//  test_Project_Colors
//
//  Created by Student on 3/8/24.
//

import UIKit

class ColorsScreenVC: UIViewController
{
    let colorsArray:[Any] = (0...50).map 
    { 
        _ -> UIColor in
        UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0.3...0.7))
    }
    
    override func viewDidLoad(){super.viewDidLoad()}
    
    
    /*@IBAction func goWhenTappedToDetailsforColors(_ sender: UIButton)
    {
        performSegue(withIdentifier: "MoveToDetailsForColors", sender: nil)
    }*/
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let desVC = segue.destination as! DetailsForColorsVC
        desVC.color = sender as? UIColor
    
    }
    
}


extension ColorsScreenVC: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int 
    {
        return colorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
    {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CelltoColor") 
        else { return UITableViewCell()}
        
        cell.backgroundColor = colorsArray[indexPath.row] as? UIColor
        cell.textLabel?.text  = "row number \(indexPath.row) 📊"
        
        //print(tableView);print(cell);print(indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) 
    {
        
        performSegue(withIdentifier: "MoveToDetailsForColors", sender: colorsArray[indexPath.row])
    }
    
    
}
