//
//  ViewController.swift
//  Counter
//
//  Created by Maksim Kargin on 11.02.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var minusOneButton: UIButton!
    @IBOutlet weak var plusOneButton: UIButton!
    @IBOutlet weak var nullButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
    
    private var counter: Int = 0
    
    private func changeCounterLabel() {
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
    private func giveDateTimeNow() -> String {
        let time = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.YYYY HH:mm:ss"
        let formatteddate = formatter.string(from: time as Date)
        return "\(formatteddate)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func counterDidMinusOne() {
        if counter == 0 {
            historyTextView.text += "\n\(giveDateTimeNow()): попытка уменьшить значение счетчика ниже 0"
        } else {
            counter -= 1
            changeCounterLabel()
            historyTextView.text += "\n\(giveDateTimeNow()): значение изменено на -1"
        }
    }
    
    @IBAction func counterDidPlusOne() {
        counter += 1
        changeCounterLabel()
        historyTextView.text += "\n\(giveDateTimeNow()): значение изменено на +1"
    }
    
    @IBAction func counterDidNull() {
        counter = 0
        changeCounterLabel()
        historyTextView.text += "\n\(giveDateTimeNow()): значение сброшено"
    }
    
}

