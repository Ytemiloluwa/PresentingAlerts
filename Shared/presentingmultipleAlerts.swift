//
//  presentingmultipleAlerts.swift
//  PresentingAlerts
//
//  Created by Temiloluwa on 12/01/2021.
//

import SwiftUI

struct presentingmultipleAlerts: View {
    @State private var showTwoButtonAlerts = false
    @State private var showSimpleAlert = false
    var body: some View {
        VStack {
            
            Toggle(isOn: $showTwoButtonAlerts) {
                
                Text("Showing Buttons")
                
            }
            .padding()
            .alert(isPresented: $showTwoButtonAlerts) {
                
                Alert(title: Text("Turn on the Switch"), message: Text("Are you sure"), primaryButton: .default(Text("Yes"), action: {
                    self.showTwoButtonAlerts.toggle()
                }
                
                ), secondaryButton: .cancel(Text("No")))
            }
            
            Button("Display other Alerts") {
                
                self.showSimpleAlert = true
            }.alert(isPresented: $showSimpleAlert) {
                
                Alert(title: Text("Minimalist Alert"))
            }
        }
    }
}

struct presentingmultipleAlerts_Previews: PreviewProvider {
    static var previews: some View {
        presentingmultipleAlerts()
    }
}
