//
//  ViewController.swift
//  Calcolatrice
//
//  Created by user on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputField: UILabel!
    
    var number: Double = 0
    var previousNumber: Double = 0
    var isAlreadyPrevious: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func cancBtn(_ sender: UIButton) {
        outputField.text = "0"
    }
    
    @IBAction func operation(_ sender: UIButton) {
        if outputField.text != "" {
            if sender.tag == 11 {
                outputField.text = "+"
                isAlreadyPrevious = true
            } else if sender.tag == 12 {
                outputField.text = "-"
                isAlreadyPrevious = true
            } else if sender.tag == 13 {
                outputField.text = "x"
                isAlreadyPrevious = true
            } else if sender.tag == 14 {
                outputField.text = "/"
                isAlreadyPrevious = true
            }
        }
    }
    
    
    @IBAction func numbImput(_ sender: UIButton) {
        if sender.tag == 1 {
            outputField.text = "1"
            isAlreadyPrevious = true
        } else if sender.tag == 2 {
            outputField.text = "2"
            isAlreadyPrevious = true
        } else if sender.tag == 3 {
            outputField.text = "3"
            isAlreadyPrevious = true
        } else if sender.tag == 4 {
            outputField.text = "4"
            isAlreadyPrevious = true
        } else if sender.tag == 5 {
            outputField.text = "5"
            isAlreadyPrevious = true
        } else if sender.tag == 6 {
            outputField.text = "6"
            isAlreadyPrevious = true
        } else if sender.tag == 7 {
            outputField.text = "7"
            isAlreadyPrevious = true
        } else if sender.tag == 8 {
            outputField.text = "8"
            isAlreadyPrevious = true
        } else if sender.tag == 9 {
            outputField.text = "9"
            isAlreadyPrevious = true
        }
    }
    
    @IBAction func equals(_ sender: UIButton) {
        if outputField.text != "" {
            if outputField.text?.first == "+" {
                isAlreadyPrevious = false
                outputField.text = String(number + previousNumber)
            } else if outputField.text?.first == "-" {
                isAlreadyPrevious = false
                outputField.text = String(number - previousNumber)
            } else if outputField.text?.first == "x" {
                isAlreadyPrevious = false
                outputField.text = String(number * previousNumber)
            } else if outputField.text?.first == "/" {
                isAlreadyPrevious = false
                outputField.text = String(number / previousNumber)
            }
        }
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        outputField.text = outputField.text! + String(sender.tag - 1)
        
        if previousNumber == 0 && isAlreadyPrevious != true {
            previousNumber = Double(outputField.text!)!
        } else {
            number = Double(outputField.text!)!
        }
        
    }
    
}

