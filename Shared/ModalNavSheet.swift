//
//  ModalNavSheet.swift
//  PresentingAlerts
//
//  Created by Temiloluwa on 12/01/2021.
//

import SwiftUI

struct ModalNavSheet: View {
    @Binding var sheetWithNav: Bool
    var body: some View {
        Text("Sheet with Navigation")
            .navigationBarTitle(Text("Sheet With Title"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                
                self.sheetWithNav = false;
            }){
                
                Text("Done")
                
            })
           
    }
}

struct ModalNavSheet_Previews: PreviewProvider {
    static var previews: some View {
        ModalNavSheet(sheetWithNav: .constant(true))
    }
}
