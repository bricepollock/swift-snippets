//
//  optionalMax.swift
//  swiftSnippets
//
//  Created by Personal on 3/22/15.
//
//

import Foundation

public func max<T : Comparable>(x: T?, y: T?) -> T? {
    if let vx = x {
        if let vy = y {
            return max(vx,vy)
        } else {
            return x
        }
    } else {
        return y
    }
}

public func max<T : Comparable>(x: T?, y: T?, z: T?) -> T? {
    return max(max(x,y),max(y,z))
}