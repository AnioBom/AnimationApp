//
//  DataAnimation.swift
//  AnimationHW
//
//  Created by mac on 9/14/22.
//

import Foundation
import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
   /*
    let force: ClosedRange<Double> = 1...2
    let duration: ClosedRange<Double> = 0...1
    let delay: ClosedRange<Double> = 0...1
*/
    private init() {}
}
