//
//  ToDo.swift
//  Project_4
//
//  Created by std_1210_03 on 2018. 6. 1..
//  Copyright © 2018년 Chan-Ho Lee. All rights reserved.
//

import Foundation

class ToDo: NSObject, NSCoding, NSCopying {
    private static let dateKey = "dateKey"
    private static let workKey = "workKey"
    var dates: [String]?
    var works: [String]?
    
    override init()
    {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        dates = aDecoder.decodeObject(forKey: ToDo.dateKey) as? [String]
        works = aDecoder.decodeObject(forKey: ToDo.workKey) as? [String]
    }
    
    func encode(with aCoder: NSCoder) {
        if let saveDates = dates {
            aCoder.encode(saveDates, forKey: ToDo.dateKey)
        }
        if let saveWorks = works {
            aCoder.encode(saveWorks, forKey: ToDo.workKey)
        }
    }
    func copy(with zone: NSZone? = nil) -> Any{
        let copy = ToDo()
        if let datesToCopy = dates {
            var newDates = Array<String>()
            for date in datesToCopy {
                newDates.append(date)
            }
            copy.dates = newDates
        }
        if let worksToCopy = works {
            var newWorks = Array<String>()
            for work in worksToCopy {
                newWorks.append(work)
            }
            copy.works = newWorks
        }
        return copy
    }
    
}
