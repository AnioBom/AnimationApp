//
//  DataAnimation.swift
//  AnimationHW
//
//  Created by mac on 9/14/22.
//

import Foundation
import SpringAnimation

class DataAnimation {
    
    static let shared = DataAnimation()

    let presets = [
        "slideLeft", "slideUp", "fadeIn",
        "zoomIn", "shake"
    ]
    
    let curves = [
        "easeIn", "easeOut", "spring",
        "easeOutSine", "easeOutCubic"
    ]
}
