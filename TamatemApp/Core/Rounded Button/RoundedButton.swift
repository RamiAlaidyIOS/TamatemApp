//
//  RoundedButton.swift
//  TamatemApp
//
//  Created by Rami Alaidy on 18/06/2023.
//

import UIKit


@IBDesignable class RoundedButton: UIButton {

    @IBInspectable var cornerRadius : CGFloat = 0.0 {
        didSet {
            self.clipsToBounds = true
            layer.cornerRadius = self.bounds.size.height / 2
        }
    }
    @IBInspectable var borderWidth : CGFloat = 15.0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor : UIColor = .yellow {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
}
