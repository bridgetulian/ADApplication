//
//  GuidelinesView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/27/22.
//

import Foundation
import SwiftUI

struct GuidelinesView: View {
    var body: some View{
        VStack {
            Text("Guidelines")
            Text("Broader ADA Guidelines")
            List {
                Text("1. Where a visual mode of operation is provided, ICT shall provide at least one mode that doesn't require user vision.")
                Text("2. Where a visual mode of operation is provided, ICT shall provide at least one mode that enables users to make use of limited vision.")
                Text("3. Where visual mode of operation is provided, ICT shall provide at least one mode of operation that doesn’t require user perception of color.")
                Text("4. Where audible mode of operation provided, ICT shall provide a mode of operation that doesn’t require user hearing.")
                Text("5. Where audible mode of operation provided, ICT shall provide a mode of operation that enables users to make use of limited hearing.")
                Text("6. Where speech is used, ICT shall provide one mode of operation that doesn’t require user speech.")
                Text("7. Where a manual mode of operation is provided, ICT shall provide at least one mode of operation that does not require fine motor control or simultaneous manual operation.")
                Text("8. Where aanual mode of operation provided, ICT shall provide at least one mode of operation that is operable with limited reach and limited strength.")
                Text("9. ICT shall provide features making its use by individuals with limited cognitive, language, and learning abilities simpler/easier.")
                }
            Text("Click on any of the ADA Guidelines to access more specific guidelines pertaining to each item.")
        }
    }
}

