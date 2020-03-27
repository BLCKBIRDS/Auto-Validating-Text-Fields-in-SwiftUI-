//File: ContentView.swift
//Project: AutoValidation

//Created at 03.03.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for more.

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("TextFieldColor"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Text("Please enter your verification code")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.top, 70)
                    .padding(.bottom, 20)
                Text("We have sent you a four-digit PIN to verificate your phone number.")
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 20)
                SecureField("PIN", text: $viewRouter.enteredPin)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color("TextFieldColor"))
                    .cornerRadius(5.0)
                    .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                Spacer()
            }
                .padding(30)
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}

struct NextButton: View {
    var body: some View {
        ZStack {
            Capsule()
                .fill(Color("TextFieldColor"))
                .frame(width: 80, height: 50)
                .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
            Image(systemName: "arrow.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
        }
    }
}
