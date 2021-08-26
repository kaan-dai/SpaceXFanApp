//
//  LaunchData.swift
//  SpaceX Fan Application
//
//  Created by Kaan Dai on 24.08.2021.
//

import Foundation
struct  LaunchData : Codable  {
    let name : String
    let flight_number : Int
    let date_utc : String
    let date_unix : Int
    let date_local : String
    let date_precision : String
    let upcoming : Bool
}
