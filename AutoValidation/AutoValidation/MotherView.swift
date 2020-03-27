//File: MotherView.swift
//Project: AutoValidation

//Created at 03.03.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for more.

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "home" {
                Text("Home")
            } else if viewRouter.currentPage == "pin" {
                ContentView()
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView()
    }
}
