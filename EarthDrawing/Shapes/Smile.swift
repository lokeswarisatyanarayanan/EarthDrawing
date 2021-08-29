//
//  Smile.swift
//  Smile
//
//  Created by Lokeswari Satyanarayana on 29/08/21.
//

import SwiftUI

struct Smile: Shape {
    
    let origin: CGPoint
    let smileOffset: CGFloat = 20
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: origin)
        path.addQuadCurve(to: CGPoint(x: rect.size.width - smileOffset, y: origin.y), control: .init(x: rect.size.width - (smileOffset * 2), y: (rect.size.width * 0.5) + smileOffset))
        return path
    }
}
