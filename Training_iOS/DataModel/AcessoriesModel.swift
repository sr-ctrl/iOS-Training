//
//  AcessoriesModel.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 08/02/22.
//

import Foundation
import UIKit

struct AcessoriesModel:Codable {
    let title: String
    let price: Double?
    let description:String
    let category: String
    let rating:RatingDto
}

struct RatingDto: Codable {
    let rate: Double
    let count: Int
}

//struct AcessoriesModel:Codable {
//    let data:dataDto
//}
//
//struct dataDto:Codable {

