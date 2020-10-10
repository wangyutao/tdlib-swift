//
//  SetChatDiscussionGroup.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the discussion group of a channel chat; requires can_change_info rights in the channel if it is specified
public struct SetChatDiscussionGroup: Codable {

    /// Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages rights in the supergroup)
    public let chatId: Int64

    /// Identifier of a new channel's discussion group. Use 0 to remove the discussion group.//-Use the method getSuitableDiscussionChats to find all suitable groups. Basic group chats need to be first upgraded to supergroup chats. If new chat members don't have access to old messages in the supergroup, then toggleSupergroupIsAllHistoryAvailable needs to be used first to change that
    public let discussionChatId: Int64


    public init (
        chatId: Int64,
        discussionChatId: Int64) {

        self.chatId = chatId
        self.discussionChatId = discussionChatId
    }
}

