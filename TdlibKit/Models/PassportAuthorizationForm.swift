//
//  PassportAuthorizationForm.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a Telegram Passport authorization form that was requested
public struct PassportAuthorizationForm: Codable {

    /// Unique identifier of the authorization form
    public let id: Int

    /// URL for the privacy policy of the service; may be empty
    public let privacyPolicyUrl: String

    /// Information about the Telegram Passport elements that need to be provided to complete the form
    public let requiredElements: [PassportRequiredElement]


    public init (
        id: Int,
        privacyPolicyUrl: String,
        requiredElements: [PassportRequiredElement]) {

        self.id = id
        self.privacyPolicyUrl = privacyPolicyUrl
        self.requiredElements = requiredElements
    }
}

