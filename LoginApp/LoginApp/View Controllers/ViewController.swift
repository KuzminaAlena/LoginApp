//
//  ViewController.swift
//  LoginApp
//
//  Created by Алена on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var logIn: UIButton!
    @IBOutlet weak var forgotUserNAme: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    
    private let user = User.getUserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let logOut = tabBarController.viewControllers as! LogOutViewController
        let navigationVC = tabBarController.viewControllers as! UINavigationController
        let infoView = navigationVC.viewControllers as! InfoViewController
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func LogINButton() {
        guard userNameTF.text == user.login,
              passwordTF.text == user.password
        else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "login", sender: nil)
    }
    
    
    @IBAction func forgotUserNameAction(_ sender: UIButton) {
        showAlert(title: "i can help you!",
                  message: "Your login is \(user.login) =)")
        
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        showAlert(title: "i can help you!",
                  message: "Your login is \(user.password) =)")
    }
    
}

extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default) {_ in
            textField?.text =  nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            LogINButton()
        }
        return true
    }
}
