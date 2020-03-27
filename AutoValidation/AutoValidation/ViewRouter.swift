//File: ViewRouter.swift
//Project: AutoValidation

//Created at 03.03.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for more.

import Foundation
import SwiftUI
import AudioToolbox

class ViewRouter: ObservableObject {
    
    @Published var enteredPin = "" {
        didSet {
            if self.enteredPin == pin {
                self.currentPage = "home"
            } else if enteredPin.count >= 4 {
                enteredPin = ""
                AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) { return }
            }
        }
    }

    @Published var currentPage = "pin"
    
}
