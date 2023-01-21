//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Vinicius Loss on 19/01/23.
//  Copyright © 2023 Eric Brito. All rights reserved.
//

import UIKit


protocol ColorPickerDelegate: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    // weak - referencia não forte
    weak var delegate: ColorPickerDelegate? // ? optional
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        
        // pega a instancia da tela anterior e passa para o metodo applyColor a cor selecionada.
        delegate?.applyColor(color: viColor.backgroundColor!)
        
        dismiss(animated: true)
    }

    @IBAction func changeColor(_ sender: UISlider) {
        
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha:   1.0)
    }
}
