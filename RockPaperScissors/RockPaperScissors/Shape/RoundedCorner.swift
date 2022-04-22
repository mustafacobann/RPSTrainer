//
//  Shape.swift
//  RockPaperScissors
//
//  Created by Mustafa on 22.04.2022.
//

import SwiftUI

struct RoundedCorner: Shape {
    var cornerRadius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}
