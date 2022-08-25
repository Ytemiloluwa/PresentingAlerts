//
//  ModalViewApp.swift
//  PresentingAlerts
//
//  Created by Temiloluwa on 12/01/2021.
//

import SwiftUI

struct ModalViewApp: View {
    
    @State private var showModal: Bool = false
    @State private var sheetWithNav: Bool = false
    var body: some View {
        
        VStack {
            
            Button("Display sheet") {
                
                self.showModal = true
            }.sheet(isPresented: $showModal) {
                
                ModalView()
            }
            
            Button("Sheet with Nav") {
                
                self.sheetWithNav = true
            }.sheet(isPresented: $sheetWithNav) {
                
                ModalNavSheet(sheetWithNav: self.$sheetWithNav)
            }
        }
        
    }
}

struct ModalViewApp_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewApp()
    }
}
