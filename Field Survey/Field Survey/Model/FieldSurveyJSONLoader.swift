//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Jeffrey Freet on 4/6/18.
//  Copyright © 2018 jpfvx8. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path))
        {
                fieldSurveys = FieldSurveyJSONParser.parse(data)
        }
        
    return fieldSurveys
    }
}
