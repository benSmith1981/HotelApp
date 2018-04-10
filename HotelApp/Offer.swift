//
//  Offer.swift
//  hotelApp
//
//  Created by Mariano Martinez on 8/4/18.
//  Copyright © 2018 Nacho Martinez. All rights reserved.
//

import Foundation

class Offer: Codable{
    
    var id: Int?
    var endDate: String?
    var startDate: String?
    var rateCode: String?
    var imagePortrait: String?
    var image: String?
    var privileges: String?
    var description: String?
    var name: String?
    var __v: Int?
    var hotels: [String]?
    var enabled: Bool?
    var order: Int?
    
}
