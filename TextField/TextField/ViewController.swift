//
//  ViewController.swift
//  TextField
//
//  Created by Vinicius Loss on 18/01/23.
//

import UIKit

// Necessário adicionar o protocolo UITextFieldDelegate - para delegar a class a um textfield
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tfEmail.delegate = self
        tfPassword.delegate = self
    }

    // Para controlar ação botão return do teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName{
            tfEmail.becomeFirstResponder()
        } else if textField == tfEmail {
            //tfPassword.becomeFirstResponder()
            
            //Simulando fechar o teclado após finalização
            print("Enviando dados!")
            //view.endEditing(true) // Remove o foco de qualquer elemento.
            textField.resignFirstResponder() // Abre mão do foco e teclado fecha
        }
        
        return true
    }
    
    // quando toca em qualquer lugar da tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // Irá para o próximo campo apenas se o campo atual estivar preenchido.
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }
    
}

