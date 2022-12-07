//
//  GroupElements.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/4/22.
//

import SwiftUI

struct GroupElements: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Group Operable Elements")
                    .font(.title)
                    .padding()
                Text("When multiple elements perform the same action, grouping them as one element decreases repetitive screen reading as well as increases target touch size.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                GroupBox {
                    Text("In the example below, there are technically two elements: an icon and text that both lead to the same link.")
                        .multilineTextAlignment(.center)
                    HStack(spacing: 0.3) {
                        Link(destination: (URL(string: "https://www.ada.gov")!)) {
                            Label("Ada Website",
                                  systemImage: "mail.stack")
                            
                        }
                    }
                    .padding()
                    .border(.black)
                    Text("By putting the two elements together into one label element, we are increasing the target size of the link as well as removing redundancy from screen readers.")
                        .multilineTextAlignment(.center)
                        .padding([.top], 5)
                }
                .padding(.bottom)
                .frame(width: 365)
                GroupBox {
                    Text("In contrast, the example below keeps the icon and text as two separate elements.")
                        .multilineTextAlignment(.center)
                    HStack {
                        Link(destination: (URL)(string: "https://www.ada.gov")!) {
                            Image(systemName: "mail.stack")
                        }
                        Link("Ada Website", destination: (URL(string: "https://www.ada.gov")!))
                    }
                    .padding()
                    .border(.black)
                    Text("The screen reader will read one element after another as connected to the link rather than as one entity.")
                        .padding([.top, .bottom], 1)
                        .multilineTextAlignment(.center)
                }
                .frame(width: 365)
                Spacer()
            }
        }
    }
}

struct GroupElements_Previews: PreviewProvider {
    static var previews: some View {
        GroupElements()
    }
}
