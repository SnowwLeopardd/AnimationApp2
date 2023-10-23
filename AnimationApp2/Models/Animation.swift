//
//  Animation.swift
//  AnimationApp2
//
//  Created by Aleksandr Bochkarev on 10/22/23.
//

import Foundation
import SpringAnimation

struct Animation {
    let presetOfAnimation: String
    let curveOfAnimation: String
    let forceOfAnimation: CGFloat
    let durationOfAnimation: CGFloat
    let delayOfAnimation: CGFloat
}

extension Animation {
    static func getAnimation1() -> Animation {
 
        let presetOfAnimation = AnimationPreset.allCases
        let randomIndexOfAnimation = Int.random(in: 0..<presetOfAnimation.count)
        
        let curveOfAnimation = AnimationCurve.allCases
        let randomIndexOfCurves = Int.random(in: 0..<curveOfAnimation.count)
        
        let animation = Animation(
            presetOfAnimation: presetOfAnimation[randomIndexOfAnimation].rawValue,
            curveOfAnimation: curveOfAnimation[randomIndexOfCurves].rawValue,
            forceOfAnimation: CGFloat.random(in: 0...1),
            durationOfAnimation: CGFloat.random(in: 0...3),
            delayOfAnimation: CGFloat.random(in: 0...1.5)
            )
        
        return animation
    }
    
    static func getAnimation2() -> Animation {
        Animation.getAnimation1()
    }
}
