//
//  SignInViewController.swift
//  BDDExamplesSwift
//
//  Created by huoshuguang on 2017/4/25.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var ibUsernameField: UITextField!
    @IBOutlet weak var ibPasswordField: UITextField!
    @IBOutlet weak var ibImageClick: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let tap = UIGestureRecognizer.init(target: self, action: "")
//        ibImageClick.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ibaTapImage(_ sender: Any)
    {
        print("------------")
        ibPasswordField.text = "huoshu"
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
