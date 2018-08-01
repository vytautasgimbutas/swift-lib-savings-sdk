//
//  PSCreateAutomatedFillRequest.swift
//  PayseraSavingsSDK
//
//  Created by Vytautas Gimbutas on 7/31/18.
//  Copyright © 2018 Paysera. All rights reserved.
//

import Foundation
import ObjectMapper

public class PSCreateAutomatedFillRequest: Mappable {
    public var amount: PSMoney!
    public var fromAccount: String!
    public var toAccount: String!
    public var periodType: String!
    public var monthDay: Int?
    public var weekDay: Int?
    
    public init() {}
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        amount      <- map["amount"]
        fromAccount <- map["from_account"]
        toAccount   <- map["to_account"]
        periodType  <- map["period_type"]
        monthDay    <- map["month_day"]
        weekDay     <- map["week_day"]
    }
}