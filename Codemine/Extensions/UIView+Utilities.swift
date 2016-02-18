//
//  UIView+Utilities.swift
//  Codemine
//
//  Created by Marius Constantinescu on 18/02/16.
//  Copyright © 2016 Nodes. All rights reserved.
//

import Foundation


public extension UIView {
    /**
     Assign a `nibName` to a UIView.
     Later on you can call this `UIView` by its `nibName`.
     
     - Parameter nibName: The name that the UIView will get as its `nibName` assigned as a `String`.
     - Returns: `Generics type`.
     */
    public static func viewWithNibNamed<T>(nibName:String) -> T {
        let view = UINib(nibName: nibName, bundle: nil).instantiateWithOwner(nil, options: nil).first! as! T
        return view
    }
    
    /**
     Rounded corners for a `UIView`.
     
     - Parameters:
     - corners: Defines which corners should be rounded.
     - radius: Defines the radius of the round corners as a `CGFloat`.
     */
    public func roundViewCorners(corners:UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.CGPath
        self.layer.mask = mask
    }
}

