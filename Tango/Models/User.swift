//
//  User.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/5/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

struct User  {
    let name: String
    let profileImage: String
    let userName: String
    let status: String
    let feeds: [Feed]?
    let friends: [User]?
}
