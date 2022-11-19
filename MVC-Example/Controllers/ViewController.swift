//
//  ViewController.swift
//  MVC-Example
//
//  Created by Vitalii Homoniuk on 19.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    private var count = 0
    private var testData: [Stocks] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        let model = Stocks.testData
        setupData(with: model)
        setupInitialState()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        displayData(index: getRandomInt())
    }
    
    private func setupView() {
    }
    
    private func setupInitialState() {
        displayData(index: count)
    }
    
    private func setupData(with testData: [Stocks]) {
        self.testData = testData
    }
    
    private func displayData(index: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[index].name
            tickerLabel.text = testData[index].ticker
            valueLabel.text = String(testData[index].value)
        } else {
            print("Sorry, no data")
        }
    }
    
    private func getRandomInt() -> Int {
        let randomInt = Int.random(in: 0 ..< testData.count)
        return randomInt
    }
}

