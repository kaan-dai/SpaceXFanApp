//
//  RocketData.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 24.08.2021.
//

import Foundation

struct RocketData: Codable{
let name : String
let type : String
let active : Bool
let flickr_images : [String]
let stages : Int
let boosters : Int
let cost_per_launch : Int
let success_rate_pct : Int
let first_flight : String
let country : String
let company : String
let wikipedia : String
let description : String
}
