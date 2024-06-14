//
//  MainPage.swift
//  Master Calculation
//
//  Created by R93 on 10/01/24.
//

import UIKit

class MainPage: UIViewController {
    
    //MARK: - Outlet -
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var mutualFund: UIButton!
    @IBOutlet weak var interest: UIButton!
    @IBOutlet weak var Discount: UIButton!
    @IBOutlet weak var EMI: UIButton!
    @IBOutlet weak var schoolResult: UIButton!
    @IBOutlet weak var SquareOrHour: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        design()
    }
    
    func design() {
        view1.layer.cornerRadius = 15
        view2.layer.cornerRadius = 15
        view3.layer.cornerRadius = 15
        view4.layer.cornerRadius = 15
        view5.layer.cornerRadius = 15
        view6.layer.cornerRadius = 15
    }
   
    //MARK: - Mutual Fund -
    @IBAction func MutualFundActionBtn(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "mutualFundCalculator") as! mutualFundCalculator
        navigationController?.pushViewController(neviget, animated: true)
    }
    
    //MARK: - Interest -
    @IBAction func interest(_ sender: UIButton) {
        let neviget = storyboard?.instantiateViewController(identifier: "interestCalculator") as! interestCalculator
        navigationController?.pushViewController(neviget, animated: true)
    }
    
    //MARK: - Discount -
    @IBAction func discount(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "discountCalculator") as! discountCalculator
        navigationController?.pushViewController(neviget, animated: true)
    }
    
    //MARK: - Emi -
    @IBAction func emi(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "eMICalculator") as! eMICalculator
        navigationController?.pushViewController(neviget, animated: true)
    }
    
    //MARK: - School Result -
    @IBAction func schoolResult(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "schoolResult") as! schoolResult
        navigationController?.pushViewController(neviget, animated: true)
    }
    
    //MARK: - Discount -
    @IBAction func squareOrHour(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "result") as! result
        navigationController?.pushViewController(neviget, animated: true)
    }
}
