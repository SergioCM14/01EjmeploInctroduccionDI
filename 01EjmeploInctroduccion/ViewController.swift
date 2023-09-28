//
//  ViewController.swift
//  01EjmeploInctroduccion
//
//  Created by Serio Catalán Muñoz on 28/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResultado: UILabel!
    var contador: UInt!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contador = 0
    }

    @IBAction func cuentaClicks(_ sender: Any) {
        contador += 1
        lbResultado.text = "\(String (contador)) veces"// la contrabarra (\) es para concatenar
    }
    
}

