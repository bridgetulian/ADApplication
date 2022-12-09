//
//  MailView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/9/22.
//

import Foundation
import SwiftUI
import UIKit
import MessageUI

struct EmailData {
    var subject: String = ""
    var recipients: [String]?
    var body: String = ""
    var isBodyHTML = false
    var attachments = [AttachmentData]()
    
    struct AttachmentData {
        var data: Data
        var mimeType: String
        var fileName: String
    }
}
                        

struct MailView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentationMode
    let emailData: EmailData
    var result: (Result<MFMailComposeResult, Error>) -> Void
    
    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        var parent: MailView
        
        init(_ parent: MailView) {
            self.parent = parent
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            if let error = error {
                parent.result(.failure(error))
                return
            }
            
            parent.result(.success(result))
            
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let emailComposer = MFMailComposeViewController()
        emailComposer.mailComposeDelegate = context.coordinator
        emailComposer.setSubject(emailData.subject)
        emailComposer.setToRecipients(emailData.recipients)
        emailComposer.setMessageBody(emailData.body, isHTML: emailData.isBodyHTML)
        for attachment in emailData.attachments {
            emailComposer.addAttachmentData(attachment.data, mimeType: attachment.mimeType, fileName: attachment.fileName)
        }
        return emailComposer
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {
        
    }
    
    static func canSendEmail() -> Bool {
        MFMailComposeViewController.canSendMail()
    }
    
    

}
