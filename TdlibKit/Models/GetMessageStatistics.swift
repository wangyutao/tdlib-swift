//
//  GetMessageStatistics.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns detailed statistics about a message. Can be used only if Message.can_get_statistics == true. The method is under development and may or may not work
public struct GetMessageStatistics: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Pass true if a dark theme is used by the application
    public let isDark: Bool

    /// Message identifier
    public let messageId: Int64


    public init (
        chatId: Int64,
        isDark: Bool,
        messageId: Int64) {

        self.chatId = chatId
        self.isDark = isDark
        self.messageId = messageId
    }
}

