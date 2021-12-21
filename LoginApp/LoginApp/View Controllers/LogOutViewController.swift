//
//  LogOutViewController.swift
//  LoginApp
//
//  Created by Алена on 22.11.2021.
//

import UIKit

class LogOutViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOut: UIButton!
    
    var user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.namePerson.fullName)"

    }
    @IBAction func logOutAction(_ sender: UIButton) {
    }
    
    
}
