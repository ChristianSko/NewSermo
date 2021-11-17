//
//  HapticEngine.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 11/11/21.
//

import CoreHaptics
import UIKit

class HapticEngine: ObservableObject {
	// Singleton
	static let shared = HapticEngine()
	
	// A haptic engine manages the connection to the haptic server and state
	private var engine: CHHapticEngine!
	
	// Maintain a variable to check for Core Haptics compatibility on device.
	lazy var supportsHaptics: Bool = {
		guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return false}
		
		return true
	}()
	

	
	// MARK: - CreteEngine for Haptics
	func createEngine() {
		if !supportsHaptics {
			return
		} else {
			// Create and configure a haptic engine.
			do {
				engine = try CHHapticEngine()
			} catch let error {
				print("Engine Creation Error: \(error)")
			}
			
			if engine == nil {
				print("Failed to create engine!")
			}
			
			// The stopped handler alerts you of engine stoppage due to external causes.
			engine.stoppedHandler = { reason in
				print("The engine stopped for reason: \(reason.rawValue)")
				switch reason {
				case .audioSessionInterrupt: print("Audio session interrupt")
				case .applicationSuspended: print("Application suspended")
				case .idleTimeout: print("Idle timeout")
				case .systemError: print("System error")
				case .notifyWhenFinished: print("Playback finished")
				@unknown default:
					print("Unknown error")
				}
			}
			
			// The reset handler provides an opportunity for your app to restart the engine in case of failure.
			engine.resetHandler = {
				// Try restarting the engine.
				print("The engine reset --> Restarting now!")
			}
			
			do {
				try engine.start()
			} catch {
				print("Failed to restart the engine: \(error)")
			}
		}
	}
	
	// MARK: - PlayAHAP
	func playHapticsFile(name filename: String) {
		// If the device doesn't support Core Haptics, abort.
		if !supportsHaptics {
			return
		}
		
		// Express the path to the AHAP file before attempting to load it.
//		guard let path = Bundle.main.url(forResource: filename, ofType: "ahap") else {
//			return
//		}
		
		guard let path = Bundle.main.url(forResource: filename, withExtension: "ahap") else {
			return
		}
	
		do {
			// Start the engine in case it's idle.
			try engine.start()
			
			// Tell the engine to play a pattern.
			try engine.playPattern(from: path)
			
		} catch { // Engine startup errors
			print("An error occured playing \(filename): \(error).")
		}
	}
}

