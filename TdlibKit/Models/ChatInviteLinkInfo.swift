//
//  ChatInviteLinkInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a chat invite link
public struct ChatInviteLinkInfo: Codable {

    /// If non-zero, the remaining time for which read access is granted to the chat, in seconds
    public let accessibleFor: Int

    /// Chat identifier of the invite link; 0 if the user has no access to the chat before joining
    public let chatId: Int64

    /// True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
    public let isPublic: Bool

    /// Number of members in the chat
    public let memberCount: Int

    /// User identifiers of some chat members that may be known to the current user
    public let memberUserIds: [Int]

    /// Chat photo; may be null
    public let photo: ChatPhotoInfo?

    /// Title of the chat
    public let title: String

    /// Contains information about the type of the chat
    public let type: ChatType


    public init (
        accessibleFor: Int,
        chatId: Int64,
        isPublic: Bool,
        memberCount: Int,
        memberUserIds: [Int],
        photo: ChatPhotoInfo?,
        title: String,
        type: ChatType) {

        self.accessibleFor = accessibleFor
        self.chatId = chatId
        self.isPublic = isPublic
        self.memberCount = memberCount
        self.memberUserIds = memberUserIds
        self.photo = photo
        self.title = title
        self.type = type
    }
}

