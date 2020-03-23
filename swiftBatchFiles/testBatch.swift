//
//  testBatch.swift
//  owpgTools
//
//  Created by Alex Young on 3/23/20.
//

import Foundation

public func runTestBatch() {

    let testBatch = [
        BatchLine(command: "pwd"),
        BatchLine(command: "bash", arguments:  ["Sources/owpgToolsCore/unixBatchFiles/unixTestBatchFile.bat"])
    ]
    
    let batchTool = owpgTool()
    batchTool.runBatch(testBatch)


}
