//
//  Data.swift
//  DoctorWho
//
//  Created by 한상훈 on 2016. 10. 4..
//  Copyright © 2016년 Sanghoon Han. All rights reserved.
//

import Foundation

class Season{
    let seasonNumber: Int
    var casts : [Charactor]
    var newold : String {
        get {
            if (seasonNumber < 9) {return "old"} else { return "new"}
        }
    }
    init (number:Int){
        self.seasonNumber = number
        casts = []
    }
}

class Charactor {
    let name: String
    var part: String
    var realname: String
    init(name: String) {
        self.name = name
        part = ""
        realname = ""
    }
}

func createDummy () -> [Season]{
    
    var DoctorWho : [Season] = []
    
    let season10 = Season(number:10)
    let season11 = Season(number:11)
    let season12 = Season(number:12)
    
    let tenth = Charactor(name: "Doctor")
    let eleventh = Charactor(name: "Doctor")
    let twelveth = Charactor(name: "Doctor")
    
    tenth.realname = "David Tenant"
    eleventh.realname = "Matt Smith"
    twelveth.realname = "Peter Cavaldi"
    
    let clara = Charactor(name:"Clara Ozwald")
    clara.realname = "Jena Colson"
    clara.part = "Companion"
    
    season10.casts += [tenth]
    season11.casts += [eleventh, clara]
    season12.casts += [twelveth, clara]
    
    DoctorWho += [season10, season11, season12]
    
    return DoctorWho
}


