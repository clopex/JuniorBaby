//
//  DataCell.swift
//  JuniorBaby
//
//  Created by MacAir on 1/11/17.
//  Copyright © 2017 MacAir. All rights reserved.
//

import Foundation
import UIKit

class DataCell {

    private var _mainImage: UIImage!
    private var _title: String!
    private var _weakLabel: String!
    private var _leapLabel: String!
    private var _cloudImage: UIImage!
    
    var mainImage: UIImage {
    
        return _mainImage
    }
    
    var title: String {
    
        return _title
    }
    
    var weakLabel: String {
        
        return _weakLabel
    }
    
    var leapLabel: String {
        return _leapLabel
    }
    
    var cloudImage: UIImage {
        return _cloudImage
    }
    
    
    
    init(mainImage: UIImage, title: String, weakLabel: String, leapLabel: String, cloudImage: UIImage) {
        
        _mainImage = mainImage
        _title = title
        _weakLabel = weakLabel
        _leapLabel = leapLabel
        _cloudImage = cloudImage
    }

}
