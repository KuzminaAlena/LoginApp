//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Алена on 22.11.2021.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel!
    
    var user: User!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = user.namePerson.fullName
    }
    

}
