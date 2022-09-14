//
//  Model.swift
//  AnimationHW
//
//  Created by mac on 9/14/22.
//

import Foundation
import SpringAnimation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
    
    var fullDescriptionAnimation: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(force)
        duration: \(duration)
        delay: \(delay)
"""
    }
}

extension Animation {
    static func getAniamtionType() -> [Animation] {
        var typeAnimation: [Animation] = []
        
        let dataA = DataAnimation.shared
        
        for animation in 0..<dataA.presets.count {
            typeAnimation.append(Animation(
                preset: dataA.presets[animation],
                curve: dataA.curves[animation],
                force: Int.random(in: 1...2),
                duration: Int.random(in: 0...1),
                delay: Int.random(in: 0...1)
                )
            )
        }
        
        return typeAnimation
    }
}
