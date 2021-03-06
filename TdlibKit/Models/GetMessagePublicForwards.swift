//
//  GetMessagePublicForwards.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns forwarded copies of a channel message to another public channels. For optimal performance the number of returned messages is chosen by the library. The method is under development and may or may not work
public struct GetMessagePublicForwards: Codable {

    /// Chat identifier of the message
    public let chatId: Int64

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. Fewer messages may be returned than specified by the limit, even if the end of the list has not been reached
    public let limit: Int

    /// Message identifier
    public let messageId: Int64

    /// Offset of the first entry to return as received from the previous request; use empty string to get first chunk of results
    public let offset: String


    public init (
        chatId: Int64,
        limit: Int,
        messageId: Int64,
        offset: String) {

        self.chatId = chatId
        self.limit = limit
        self.messageId = messageId
        self.offset = offset
    }
}

