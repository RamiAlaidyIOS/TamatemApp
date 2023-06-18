//
//  RoundedButton.swift
//  TamatemApp
//
//  Created by Rami Alaidy on 18/06/2023.
//

import UIKit

@IBDesignable class RoundedButton2: UIButton {

    @IBInspectable var cornerRadios: CGFloat = 0{
        didSet{
            layer.cornerRadius = self.frame.size.height / 2
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
@IBDesignable class RoundedButton: UIButton {

    @IBInspectable var cornerRadius : CGFloat = 5 {
        didSet {
            layer.cornerRadius = self.frame.size.height / 2
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
