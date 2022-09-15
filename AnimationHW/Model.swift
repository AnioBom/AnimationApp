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
    let force: Double
    let duration: Double
    let delay: Double
    
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
    static func getAniamtionType() {
        var typeAnimation: [Animation] = []
        
        let dataStore = DataStore.shared
        
        let presets = dataStore.presets.shuffled()
        let curves = dataStore.curves.shuffled()
        let force = Double.random(in: 1...2)
        let duration = Double.random(in: 0...1)
        let delay = Double.random(in: 0...1)
        
        
        let iterationCount = min(
            presets.count,
            curves.count,
            force,
            duration,
            delay
        )
       
        for _ in 0..<iterationCount {
            let animation = Animation(preset:
                                      presets.randomElement(),
                                      curve: curves.randomElement(),
                                      force: .random(in: 1...2),
                                      duration: .random(in: 0...1),
                                      delay: .random(in: 0...1))
            typeAnimation.append(animation)
        }
       
        /*for _ in 0..<dataStore.presets.count {
            typeAnimation.append(Animation(
                preset: dataA.presets,
                curve: dataA.curves,
                force: Int.random(in: 1...2),
                duration: Int.random(in: 0...1),
                delay: Int.random(in: 0...1)
                )
            )
         
        
        return typeAnimation
         */
    }
}
