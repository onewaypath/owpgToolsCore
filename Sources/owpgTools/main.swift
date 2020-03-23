import unixTools
import Foundation
import owpgToolsCore



    
if CommandLine.arguments.count > 1 {
    
    switch CommandLine.arguments[1] {
    case "test":
        let batchTool = owpgTool()
        try batchTool.testRun()
        runTestBatch()
    default:
        print("owpg: unknown subrutine call")
    }
}

else {
    print("owpg: subrutine undefined")
}








