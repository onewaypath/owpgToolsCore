//
//  pullRunBatch.swift
//  owpgTools
//
//  Created by Alex Young on 3/23/20.
//

import Foundation


public func runPullRunBatch() {
    
    let pullRunBatch = [
        BatchLine(command: "pwd"),
        BatchLine(command: "git", commandPath: "/usr/bin/", arguments: ["pull", "origin", "master"]),
        BatchLine(command: "swift", commandPath: "/usr/bin/", arguments: ["build"]),
        BatchLine(command: "swift", commandPath: "/usr/bin/", arguments: ["run"])
    ]
    
    let batchTool = owpgTool()
       batchTool.runBatch(pullRunBatch)
}
