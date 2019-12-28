//
//  InsertViewController.swift
//  Project_4
//
//  Created by std_1210_03 on 2018. 6. 1..
//  Copyright © 2018년 Chan-Ho Lee. All rights reserved.
//

import UIKit

class InsertViewController: UIViewController {
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let date = datePicker.date
        let message = "고객님이 선택하신 날짜는\(date)입니다."
        let alert = UIAlertController(title: "선택하신 날짜가 맞습니까?",message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "예", style: .default, handler: nil)
          let action2 = UIAlertAction(title: "아니오", style: .default, handler: nil)
        alert.addAction(action)
        alert.addAction(action2)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParentViewController{
            let count = parent?.childViewControllers.count
            let listVC = parent?.childViewControllers[count!-1] as! RootViewController
            listVC.dates.append(dateField.text!)
            listVC.works.append(nameField.text!)
            listVC.tableView.reloadData()
        }
    }
    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder()
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let date = DateFormatter.localizedString(from: datePicker.date, dateStyle: .medium, timeStyle: .short)
        dateField.text = date
    }
    
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        dateField.resignFirstResponder()
        nameField.resignFirstResponder()
        
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

