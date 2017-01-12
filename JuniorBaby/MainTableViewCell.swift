//
//  MainTableViewCell.swift
//  JuniorBaby
//
//  Created by MacAir on 1/11/17.
//  Copyright © 2017 MacAir. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var weakLabel: UILabel!
    @IBOutlet weak var cloudImage: UIImageView!
    @IBOutlet weak var leapLabel: UILabel!
    @IBOutlet weak var firstCircle: UIView!
    @IBOutlet weak var secondCircle: UIView!
    @IBOutlet weak var thirdCricle: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(dataCell: DataCell) {
        //border and circle shape for the views
        cornerAndColor(color: orangeBorderColor, view: firstCircle)
        cornerAndColor(color: orangeBorderColor, view: thirdCricle)
        
        mainImage.image = dataCell.mainImage
        title.text = dataCell.title
        weakLabel.text = dataCell.weakLabel
        leapLabel.text = dataCell.leapLabel
        cloudImage.image = dataCell.cloudImage

    }
    
    func cornerAndColor(color: UIColor, view: UIView) {
        view.layer.cornerRadius = view.frame.size.width / 2
        view.clipsToBounds = true
        view.layer.borderWidth = 2.0
        view.layer.borderColor = color.cgColor
        
    }

}
