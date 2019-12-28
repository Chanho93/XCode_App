//
//  ViewController1.swift
//  Project_4
//
//  Created by std_1210_03 on 2018. 6. 6..
//  Copyright © 2018년 Chan-Ho Lee. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var webView: UIWebView!
   
    var rowNum: Int!
    private let urlSite = ["https://www.google.com"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: urlSite[rowNum])
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
