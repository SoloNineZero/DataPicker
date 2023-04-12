//
//  ViewController.swift
//  DataPicker
//
//  Created by Игорь Солодянкин on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = getDate()
    }

    @IBAction func changeDate(_ sender: UIDatePicker) {
        dataLabel.text = getDate()
    }
    
    private func getDate() -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .full
        dateFormater.locale = Locale(identifier: "ru_RU")
        let dateValue = dateFormater.string(from: datePicker.date)
        return dateValue
    }

}

