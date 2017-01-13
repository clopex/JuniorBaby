//
//  ViewController.swift
//  JuniorBaby
//
//  Created by MacAir on 1/11/17.
//  Copyright © 2017 MacAir. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var plusView: UIView!

    var arrayCell = [DataCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let data1 = DataCell(mainImage: #imageLiteral(resourceName: "kid1"), title: "Victora", weakLabel: "82", leapLabel: "10", cloudImage: #imageLiteral(resourceName: "sunny"))
        let data2 = DataCell(mainImage: #imageLiteral(resourceName: "kid2"), title: "Sarah", weakLabel: "8", leapLabel: "2", cloudImage: #imageLiteral(resourceName: "cloudy"))
        let data3 = DataCell(mainImage: #imageLiteral(resourceName: "kid3"), title: "Simon", weakLabel: "90", leapLabel: "12", cloudImage: #imageLiteral(resourceName: "sunny"))

        
        arrayCell.append(data1)
        arrayCell.append(data2)
        arrayCell.append(data3)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        plusView.layer.cornerRadius = plusView.frame.size.width / 2
        plusView.clipsToBounds = true
        plusView.layer.borderWidth = 0.5
        plusView.layer.borderColor = borderPlus.cgColor
        
        if ( UIDevice.current.userInterfaceIdiom == .pad)
        {
            tableView.rowHeight = 218
            tableView.sectionFooterHeight = 170
        }
        
        //tableView.tableFooterView = plusImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainTableViewCell {
        
            
            let index = arrayCell[indexPath.row]
            
            if index.title == "Sarah" {
            
                cell.secondCircle.layer.cornerRadius = cell.secondCircle.frame.size.width / 2
                cell.secondCircle.clipsToBounds = true
                cell.secondCircle.layer.borderWidth = 2.0
                cell.secondCircle.layer.borderColor = blueBorderColor.cgColor
                
            } else{
                cell.secondCircle.layer.cornerRadius = cell.secondCircle.frame.size.width / 2
                cell.secondCircle.clipsToBounds = true
                cell.secondCircle.layer.borderWidth = 2.0
                cell.secondCircle.layer.borderColor = orangeBorderTickColor.cgColor
            }
            
            cell.updateUI(dataCell: index)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCell.count
    }


}

