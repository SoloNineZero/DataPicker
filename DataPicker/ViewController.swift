//
//  ViewController.swift
//  DataPicker
//
//  Created by Игорь Солодянкин on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dataPicker: UIDatePicker! {
        didSet {
            dataPicker.locale = Locale(identifier: "ru_RU")
        }
    }
    
    @IBOutlet var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeDate(_ sender: UIDatePicker) {
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .full
        let dateValue = dateFormater.string(from: sender.date)
        dataLabel.text = dateValue
    }

}

