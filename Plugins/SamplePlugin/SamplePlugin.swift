//
//  SamplePlugin.swift
//

import Foundation
import PackagePlugin

@main
struct SamplePlugin: BuildToolPlugin {
  func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
    let fileName = "Sample.swift"
    
    let output = context.pluginWorkDirectory.appending(fileName)
    let tool = try context.tool(named: "SampleExec")
    
    return [
      .buildCommand(
        displayName: "SamplePlugin",
        executable: tool.path,
        arguments: [
          output
        ],
        outputFiles: [ output ]
      )
    ]
  }
}
