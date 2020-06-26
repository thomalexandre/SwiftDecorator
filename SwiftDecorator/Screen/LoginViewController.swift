//
//  LoginViewController.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    init() {
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = LanguageManager.sharedInstance.localise("label_username")
        passwordLabel.text = LanguageManager.sharedInstance.localise("label_password")
        loginButton.setTitle(LanguageManager.sharedInstance.localise("button_login"), for: .normal)
    }
    
    @IBAction func loginDidPress(_ sender: Any) {
        
        let alert = UIAlertController(title: LanguageManager.sharedInstance.localise("message_success"),
                                      message: LanguageManager.sharedInstance.localise("message_login_success"),
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: LanguageManager.sharedInstance.localise("ok"), style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
