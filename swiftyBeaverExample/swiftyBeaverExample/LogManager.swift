//
//  LogManager.swift
//  swiftyBeaverExample
//
//  Created by JULIAN OSORIO RAMIREZ on 26/12/24.
//

import Foundation
import SwiftyBeaver

class LogManager {
    static let shared = LogManager()

    private init() {
        // Configure SwiftyBeaver
        let console = ConsoleDestination()  // Default to console output
        let file = FileDestination()        // Log to a file

        // Set log level for each destination
        console.minLevel = .debug
        file.minLevel = .info

        // Add destinations to the logger
        SwiftyBeaver.addDestination(console)
        SwiftyBeaver.addDestination(file)
    }

    // Helper function for logging
    func logInfo(_ message: String) {
        SwiftyBeaver.info(message)
    }

    func logDebug(_ message: String) {
        SwiftyBeaver.debug(message)
    }

    func logError(_ message: String) {
        SwiftyBeaver.error(message)
    }
}

