//
//  Model.swift
//  MvcCounterPractice
//
//  Created by 田澤歩 on 2021/06/10.
//

import Foundation


final class Model {
    let notifivationCenter = NotificationCenter.default
    
    private(set) var textCount = 0 {
        didSet{
            notifivationCenter.post(name: .init("textCount"),
                                    object: nil,
                                    userInfo: ["textCount": textCount])
            
        }
    }
    
}
