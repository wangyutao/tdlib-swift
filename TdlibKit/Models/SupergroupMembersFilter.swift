//
//  SupergroupMembersFilter.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Specifies the kind of chat members to return in getSupergroupMembers
public enum SupergroupMembersFilter: Codable {

    /// Returns recently active users in reverse chronological order
    case supergroupMembersFilterRecent

    /// Returns contacts of the user, which are members of the supergroup or channel
    case supergroupMembersFilterContacts(SupergroupMembersFilterContacts)

    /// Returns the owner and administrators
    case supergroupMembersFilterAdministrators

    /// Used to search for supergroup or channel members via a (string) query
    case supergroupMembersFilterSearch(SupergroupMembersFilterSearch)

    /// Returns restricted supergroup members; can be used only by administrators
    case supergroupMembersFilterRestricted(SupergroupMembersFilterRestricted)

    /// Returns users banned from the supergroup or channel; can be used only by administrators
    case supergroupMembersFilterBanned(SupergroupMembersFilterBanned)

    /// Returns bot members of the supergroup or channel
    case supergroupMembersFilterBots


    private enum Kind: String, Codable {
        case supergroupMembersFilterRecent
        case supergroupMembersFilterContacts
        case supergroupMembersFilterAdministrators
        case supergroupMembersFilterSearch
        case supergroupMembersFilterRestricted
        case supergroupMembersFilterBanned
        case supergroupMembersFilterBots
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .supergroupMembersFilterRecent:
            self = .supergroupMembersFilterRecent
        case .supergroupMembersFilterContacts:
            let value = try SupergroupMembersFilterContacts(from: decoder)
            self = .supergroupMembersFilterContacts(value)
        case .supergroupMembersFilterAdministrators:
            self = .supergroupMembersFilterAdministrators
        case .supergroupMembersFilterSearch:
            let value = try SupergroupMembersFilterSearch(from: decoder)
            self = .supergroupMembersFilterSearch(value)
        case .supergroupMembersFilterRestricted:
            let value = try SupergroupMembersFilterRestricted(from: decoder)
            self = .supergroupMembersFilterRestricted(value)
        case .supergroupMembersFilterBanned:
            let value = try SupergroupMembersFilterBanned(from: decoder)
            self = .supergroupMembersFilterBanned(value)
        case .supergroupMembersFilterBots:
            self = .supergroupMembersFilterBots
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .supergroupMembersFilterRecent:
            try container.encode(Kind.supergroupMembersFilterRecent, forKey: .type)
        case .supergroupMembersFilterContacts(let value):
            try container.encode(Kind.supergroupMembersFilterContacts, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterAdministrators:
            try container.encode(Kind.supergroupMembersFilterAdministrators, forKey: .type)
        case .supergroupMembersFilterSearch(let value):
            try container.encode(Kind.supergroupMembersFilterSearch, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterRestricted(let value):
            try container.encode(Kind.supergroupMembersFilterRestricted, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterBanned(let value):
            try container.encode(Kind.supergroupMembersFilterBanned, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupMembersFilterBots:
            try container.encode(Kind.supergroupMembersFilterBots, forKey: .type)
        }
    }
}

/// Returns contacts of the user, which are members of the supergroup or channel
public struct SupergroupMembersFilterContacts: Codable {

    /// Query to search for
    public let query: String


    public init (query: String) {
        self.query = query
    }
}

/// Used to search for supergroup or channel members via a (string) query
public struct SupergroupMembersFilterSearch: Codable {

    /// Query to search for
    public let query: String


    public init (query: String) {
        self.query = query
    }
}

/// Returns restricted supergroup members; can be used only by administrators
public struct SupergroupMembersFilterRestricted: Codable {

    /// Query to search for
    public let query: String


    public init (query: String) {
        self.query = query
    }
}

/// Returns users banned from the supergroup or channel; can be used only by administrators
public struct SupergroupMembersFilterBanned: Codable {

    /// Query to search for
    public let query: String


    public init (query: String) {
        self.query = query
    }
}

