//
//  Continents.swift
//  Continents
//
//  Created by Lokeswari Satyanarayana on 29/08/21.
//

import SwiftUI

struct Continent: View {
    
    private let widthOffset: CGFloat = 50
    private let heightOffset: CGFloat = 20
    private let frameSize: CGFloat = 100
    
    var body: some View {
        ZStack {
            Circle().fill(.green)
            Circle().fill(.green).offset(.init(width: -widthOffset, height: -heightOffset))
            Circle().fill(.green).offset(.init(width: widthOffset, height: -heightOffset))
        }
        .frame(width: frameSize,
               height: frameSize,
               alignment: .center)
    }
}


struct Continent_Previews: PreviewProvider {
    static var previews: some View {
        Continent()
    }
}
