//
//  ViewController.swift
//  Counter
//
//  Created by Maksim Kargin on 11.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var minusOneButton: UIButton!
    @IBOutlet private weak var plusOneButton: UIButton!
    @IBOutlet private weak var nullButton: UIButton!
    @IBOutlet private weak var historyTextView: UITextView!
    
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
    
    @IBAction private func counterDidMinusOne() {
        if counter == 0 {
            historyTextView.text += "\n\(giveDateTimeNow()): попытка уменьшить значение счетчика ниже 0"
        } else {
            counter -= 1
            changeCounterLabel()
            historyTextView.text += "\n\(giveDateTimeNow()): значение изменено на -1"
        }
    }
    
    @IBAction private func counterDidPlusOne() {
        counter += 1
        changeCounterLabel()
        historyTextView.text += "\n\(giveDateTimeNow()): значение изменено на +1"
    }
    
    @IBAction private func counterDidNull() {
        counter = 0
        changeCounterLabel()
        historyTextView.text += "\n\(giveDateTimeNow()): значение сброшено"
    }
    
}

