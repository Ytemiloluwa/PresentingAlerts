//
//  ContextMenu.swift
//  PresentingAlerts
//
//  Created by Temiloluwa on 12/01/2021.
//

import SwiftUI

struct ContextMenu: View {
    @State private var bulbColor = Color.red
    var body: some View {
        
        Image(systemName: "lightbulb.fill")
            .font(.system(size: 60))
            .foregroundColor(bulbColor)
            .contextMenu {
                
                Button("Change to yellow") {
                    
                    self.bulbColor = Color.yellow
                }
                Button("Change to blue") {
                    
                    self.bulbColor = Color.blue
                }
                Button("Change to green") {
                    
                    self.bulbColor = Color.green
            }
        }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
