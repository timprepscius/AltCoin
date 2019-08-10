//
//  Shell.swift
//  AltCoin
//
//  Created by Timothy Prepscius on 8/10/19.
//

import Foundation

@discardableResult
public func shell(_ args: String...) -> Int32 {
    let task = Process()
    task.launchPath = "/usr/bin/env"
    task.arguments = args
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}
