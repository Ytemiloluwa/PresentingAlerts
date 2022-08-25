//
//  PresentingActionSheet.swift
//  PresentingAlerts
//
//  Created by Temiloluwa on 12/01/2021.
//

import SwiftUI

struct PresentingActionSheet: View {
    @State private var showSheets: Bool = false
    var body: some View {
        Text("Presents Sheets")
            .onTapGesture {
                self.showSheets = true
        }
            .actionSheet(isPresented: $showSheets) {
                
                ActionSheet(title: Text("Action Sheet"), message: Text("Using Action Sheet to give users options to complete a task").font(.largeTitle), buttons: [.default(Text("Dismiss Sheet")), .default(Text("Save")), .destructive(Text("Cancel")), .default(Text("print to console")) {
                    
                    print("button Clicked ")
                
                    }])
       }
    }
}

struct PresentingActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        PresentingActionSheet()
    }
}
