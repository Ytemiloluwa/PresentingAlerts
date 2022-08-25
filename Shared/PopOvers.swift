//
//  PopOvers.swift
//  PresentingAlerts
//
//  Created by Temiloluwa on 12/01/2021.
//

import SwiftUI

struct PopOvers: View {
    
    @State private var showPopOvers = false
    var body: some View {
        
        Button(action: {
            
            self.showPopOvers = true
            
        }) {
            Text("showPopove").font(.system(size: 40))
        }.popover(isPresented: self.$showPopOvers, arrowEdge: .bottom) {
            
            Text("Show popover here")
        }
    }
}

struct PopOvers_Previews: PreviewProvider {
    static var previews: some View {
        PopOvers()
    }
}
