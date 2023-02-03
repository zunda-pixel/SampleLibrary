import Foundation

let output = CommandLine.arguments[1]

let sourceCode: String = """
struct Sample {
  let name: String
  let age: Int
}
"""

let path = URL(fileURLWithPath: output)

let data = sourceCode.data(using: .utf8)!
  
try data.write(to: path)
