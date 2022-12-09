//
//  FeedbackView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/27/22.
//

import Foundation
import SwiftUI
import MessageUI

struct FeedbackView: View {
        
    @State var showMenu = false
    @State private var showEmailComposer = false
    @State private var showAlert = false
    @State private var alertMessage: String = ""
    @State var body2: String = ""
    @State var name: String = ""

    var body: some View{
        
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }

        NavigationView {
            GeometryReader { geometry in
                
                VStack {
                    if self.showMenu == false {
                        Text("Feedback")
                            .font(.title)
                        Text("Part of maintaining universal usability is asking for an implementing feedback. Please let us know if there is anything that could make our application more usable!")
                            .padding([.leading, .bottom, .trailing])
                        Form {
                            TextField("Name & Contact (optional):", text: $name)
                            TextEditor(text: $body2)
                                .frame(height: 400.0)
                    
                            Button("Submit") {
                                let emailData = EmailData(subject: "Feedback", recipients: ["afwright@middlebury.edu", "bulian@middlebury.edu"], body: body2)
                                if MailView.canSendEmail() {
                                    showEmailComposer = true
                                } else {
                                    alertMessage = "Unable to send an email from this device."
                                    showAlert = true
                                }
                                
                            }.sheet(isPresented: $showEmailComposer, content: {
                                
                            }).alert(isPresented: $showAlert, content : {
                                Alert(title: Text("Send Email"),
                                      message: Text(alertMessage),
                                      dismissButton: .default(Text("Dismiss")))
                            })
                        }
                    }
                }
                ZStack(alignment: .leading) {
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("ADApplication", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    if self.showMenu {
                        Text("Menu")
                            .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    }
                    if self.showMenu == false {
                        Text("Menu")
                            .foregroundColor(.black)
                    }
                }
            ))
        }
        .navigationBarBackButtonHidden(true)
    }
}

//func composeEmail(subject: Text, body: Text, recipient: Text) {
//    guard MFMailComposeViewController.canSendMail() else {
//        let
//    }
//}
