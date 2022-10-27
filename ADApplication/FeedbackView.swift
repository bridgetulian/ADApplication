//
//  FeedbackView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/27/22.
//

import Foundation
import SwiftUI

struct FeedbackView: View {
        
    var body: some View{
        Text("Feedback")
            .font(.title)
        Text("Part of maintaining universal usability is asking for an implementing feedback. Please let us know if there is anything that could make our application more usable!")
            .padding([.leading, .bottom, .trailing])
        Form {
            TextField("Name & Contact (optional):", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            TextEditor(text: .constant("Placeholder"))
                .frame(height: 400.0)
    
            Button("Submit") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    }
}
