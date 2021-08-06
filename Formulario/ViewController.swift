//
//  ViewController.swift
//  Formulario
//
//  Created by Lucas Viana Munhoz on 04/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    //develop

    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Cpf: UITextField!
    @IBOutlet weak var Telefone: UITextField!
    @IBOutlet weak var Nome: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    func IsValidPhone(phone: String)  {
        let valid = phone.isValidPhone
        if !valid {
            print("Telefone invalido ");
        }
    }
    @IBAction func ValidarFormulario(_ sender: Any) {
        IsValidPhone(phone: Telefone.text!)
        IsValidEmail(email: Email.text!)
    }
     func IsValidEmail(email: String)  {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let valido = emailPred.evaluate(with: email)
        if(!valido){
            print("Email invalido ");
        }
        
    }
}
  

extension String {
   var isValidPhone: Bool {
      let regularExpressionForPhone = "^\\d{3}-\\d{3}-\\d{4}$"
      let testPhone = NSPredicate(format:"SELF MATCHES %@", regularExpressionForPhone)
      return testPhone.evaluate(with: self)
   }

}



