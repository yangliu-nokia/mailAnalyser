//
//  ViewController.swift
//  MailAnalyser
//
//  Created by Liu, Yang 7. (Nokia - FR/Nozay) on 30/11/2017.
//  Copyright © 2017 Liu, Yang 7. (Nokia - FR/Nozay). All rights reserved.
//

import UIKit
import Postal

class ViewController: UIViewController {

    @IBOutlet weak var tryMeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func connect() {
        let postal = Postal(configuration: .icloud(login: "myemail@icloud.com", password: "mypassword"))
        postal.connect { result in
            switch result {
            case .success:
                print("success")
            case .failure(let error):
                print("error: \(error)")
            }
        }
    }
}

