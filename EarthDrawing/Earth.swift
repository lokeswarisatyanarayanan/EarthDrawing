//
//  Earth.swift
//  EarthDrawing
//
//  Created by Lokeswari Satyanarayana on 29/08/21.
//

import SwiftUI

struct Earth: View {
    
    private let eyeRadius: CGFloat = 40
    private let height: CGFloat = 200
    private let width: CGFloat = 200
    private let halfWidth: CGFloat = 100
    private let quarterWidth: CGFloat = 50
    private let threeQuarterWidth: CGFloat = 150
    private let smileOffset: CGFloat = 20
    @State var bounce = false
    
    var eyes: some View {
        Group {
            Circle()
                .fill()
                .frame(width: eyeRadius,
                       height: eyeRadius)
                .position(x: quarterWidth,
                          y: eyeRadius * 2)
            Circle()
                .fill(Color(uiColor: .systemGray6))
                .frame(width: 20,
                       height: 20)
                .position(x: quarterWidth - 5,
                          y: eyeRadius * 2 - 5)
            Circle()
                .fill(Color(uiColor: .systemGray6))
                .frame(width: 10,
                       height: 10)
                .position(x: quarterWidth + 5,
                          y: eyeRadius * 2 + 10)
            Circle()
                .fill()
                .frame(width: eyeRadius,
                       height: eyeRadius)
                .position(x: threeQuarterWidth,
                          y: eyeRadius * 2)
            Circle()
                .fill(Color(uiColor: .systemGray6))
                .frame(width: 20,
                       height: 20)
                .position(x: threeQuarterWidth - 5,
                          y: eyeRadius * 2 - 5)
            Circle()
                .fill(Color(uiColor: .systemGray6))
                .frame(width: 10,
                       height: 10)
                .position(x: threeQuarterWidth + 5,
                          y: eyeRadius * 2 + 10)
        }
    }
    
    var background: some View {
        Group {
            Circle()
                .fill(Color.cyan)
                .zIndex(-2)
            Circle()
                .strokeBorder(Color.black,
                              lineWidth: 2)
        }
    }
    
    var smile: some View {
        Smile(origin: .init(x: halfWidth + smileOffset,
                            y: halfWidth - smileOffset))
            .stroke(lineWidth: 2)
            .position(x: quarterWidth,
                      y: threeQuarterWidth)
    }
    
    var continents: some View {
        Group {
            Continent()
                .position(x: halfWidth, y: 0)
                .clipShape(Circle())
                .zIndex(-1)
            Continent()
                .position(x: quarterWidth, y: 0)
                .rotationEffect(.degrees(-120))
                .clipShape(Circle())
                .zIndex(-1)
            Continent()
                .position(x: threeQuarterWidth, y: 0)
                .rotationEffect(.degrees(-240))
                .clipShape(Circle())
                .zIndex(-1)
        }
    }
    
    var body: some View {
        VStack {
            Button(action: {self.bounce.toggle()}) {
                Image(systemName: "globe")
            }
            Spacer().frame(height: 200)
            ZStack {
                background
                eyes
                smile
                continents
            }
            .frame(width: width,
                   height: height,
                   alignment: .center)
            .offset(y: bounce ? 0 : 200)
            .animation(.linear(duration: 2), value: bounce)
        }
    }
}

struct Earth_Previews: PreviewProvider {
    static var previews: some View {
        Earth()
    }
}
