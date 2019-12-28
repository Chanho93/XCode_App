//
//  SearchViewController.swift
//  Project_4
//
//  Created by std_1210_03 on 2018. 6. 6..
//  Copyright © 2018년 Chan-Ho Lee. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func doSearch(_ sender: UIButton) {
        let url = URL(string: "https://\(textField.text!)")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        
        textField.resignFirstResponder()
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
