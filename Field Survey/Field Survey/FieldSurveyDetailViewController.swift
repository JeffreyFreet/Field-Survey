//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Jeffrey Freet on 4/6/18.
//  Copyright © 2018 jpfvx8. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var observation: FieldSurvey?
    
    var dateFormatter = DateFormatter()

    @IBOutlet weak var fieldSurveyImage: UIImageView!
    @IBOutlet weak var fieldSurveyTitle: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var fieldSurveyDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldSurveyImage.image = observation?.classification.image
        fieldSurveyTitle.text = observation?.title
        fieldSurveyDescription.text = observation?.description
        
        if let date = observation?.date{
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
