//
//  ViewController.swift
//  finalProjectAni
//
//  Created by apple on 5/31/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

   
    @IBOutlet weak var elPostText: UITextField!
    
    @IBOutlet weak var textPassword: UITextField!
    
    let mailText = "aniTchonashvili@gmail.com"
    let password = "tchonashvili"
    var error = ""
    
    
    
    
    
    @IBAction func enterButton(_ sender: Any) {
        if let textEmailId = self.elPostText.text, textEmailId.isEmpty
        {
            return
        }else if let textPasswordId = self.textPassword.text, textPasswordId.isEmpty
        {
            return
        }
        let textEmailId = self.elPostText.text
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            self.navigationController?.pushViewController(viewController, animated: false)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        elPostText.delegate = self
        textPassword.delegate = self
        elPostText.layer.cornerRadius = 30
        
    }
    
    func textFiledreturnt(_ textField: UITextField) -> Bool{
        self.elPostText.resignFirstResponder()
        self.textPassword.resignFirstResponder()
        return true
    }


}

