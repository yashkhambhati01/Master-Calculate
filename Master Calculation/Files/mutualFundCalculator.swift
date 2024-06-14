//
//  MutualFundCalculator.swift
//  Master Calculation
//
//  Created by R93 on 18/01/24.
//

import UIKit

class mutualFundCalculator: UIViewController {
    
    //MARK: - Outlet -
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var investedOutlet: UILabel!
    @IBOutlet weak var EstReturnOutlet: UILabel!
    @IBOutlet weak var Totalvalue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Calculate Button Action -
    @IBAction func calculateActionBtn(_ sender: Any) {
        let investement = Double(text1.text!)
        let Expected = Double(text2.text!)
        let TP = Double(text3.text!)
        
        Totalvalue.text = String(futurevalue(monthly: Double(investement ?? 0), ExReturn: Double(Expected ?? 0), Time: Double(TP!)))
        let totalvalue = (futurevalue(monthly: Double(investement ?? 0), ExReturn: Double(Expected ?? 0), Time: Double(TP!))) - Double(investement ?? 0)
        
        EstReturnOutlet.text = String(totalvalue)
        investedOutlet.text = String(investement!)
        
        if text1.text == ""{
            alert(title: "Error", message: "plz Enter montly investment")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Plz Enter Expected return")
        }
        else if text3.text == ""{
            alert(title: "Error", message: "Plz Enter Time Period")
        }
    }
    
    //MARK: - Alert -
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
    }
    
    //MARK: - Functions -
    func futurevalue(monthly: Double, ExReturn: Double, Time: Double) -> Double{
        let value = monthly * pow(1 + ExReturn / 100, Time)
        return value
    }
}
