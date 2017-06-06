//
//  fancyTextfield.swift
//  SocialApp2
//
//  Created by naren puppala on 6/5/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit

class fancyTextfield: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor(red: shadow_gray, green: shadow_gray, blue: shadow_gray, alpha: 0.2).cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 2.0
    }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
}
