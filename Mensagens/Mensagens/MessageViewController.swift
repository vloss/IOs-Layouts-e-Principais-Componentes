//
//  ViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        message = Message()
    }
    
    // Enviando informações de uma View para outra
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // recupera próxima view controller e já define ela como a próxima viewcontroller
        // Instancia a próxima View
        let vc = segue.destination as! MessageColorViewController
        
        //Passa para a variavel message que é herdada de BaseViewController o conteudo da MessageViewCOntroller
        vc.message = message
    }
}

extension MessageViewController: UITextFieldDelegate {
    
    // Momento em que o botão concluir do teclado é precionado.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        message.text = textField.text!
        lbMessage.text = textField.text!
        textField.resignFirstResponder()
        return true
    }
}

extension MessageViewController: ColorPickerDelegate{

    func applyColor(color: UIColor){
        // recebe a cor selecionada no colorPicker e aplica no texto
        lbMessage.textColor = color
        
        // define no objeto message a cor escolhida do texto, para passar para a próxima tela
        message.textColor = color
        
    }
}
