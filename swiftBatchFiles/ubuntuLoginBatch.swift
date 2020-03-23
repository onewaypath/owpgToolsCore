//
//  ubuntuLoginBatch.swift
//  owpgTools
//
//  Created by Alex Young on 3/23/20.
//

import Foundation

public func runUbuntuLoginBatch() {

    let ubuntuLoginBatch = [
        BatchLine(command: "pwd"),
        BatchLine(command: "ssh", commandPath: "/usr/bin/", arguments: ["ayoung@swift.onewaypath.com", "-p2223"])
    ]
    
    let batchTool = owpgTool()
    batchTool.runBatch(ubuntuLoginBatch)

}
