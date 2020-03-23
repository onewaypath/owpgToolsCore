//
//  owpgToolsCore.swift
//  owpgTools
//
//  Created by Alex Young on 3/23/20.
//

import Foundation

public struct BatchLine {
    
    let command: String
    let commandPath: String
    let arguments: [String]
    
    public init(command: String, commandPath: String = "/bin/", arguments: [String] = []) {
        self.command = command
        self.commandPath = commandPath
        self.arguments = arguments
    }

}
    
public final class owpgTool {
    private let arguments: [String]

    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }

    public func testRun() throws {
        print("This is a test run for the OWPG Tools utility program", "\n")
        print("The arguments for this execution are as follows: \n")
        for argument in CommandLine.arguments {
            print(argument, "\n")
        }
            }

    public func runBatch (_ batchFile: [BatchLine]) {
        
        for line in batchFile {
            print (line.command)
            unixTools().runUnixToScreen(line.command, commandPath: line.commandPath, arguments: line.arguments)
        }
        
    }
}
