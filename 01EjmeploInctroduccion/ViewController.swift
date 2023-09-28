//
//  ViewController.swift
//  01EjmeploInctroduccion
//
//  Created by Serio Catalán Muñoz on 28/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResultado: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    var contador: UInt!
    var listaUsuarios: [Usuario]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contador = 0
        listaUsuarios = []
    }

    @IBAction func cuentaClicks(_ sender: Any) {
        contador += 1
        lbResultado.text = "\(String (contador)) veces"// la contrabarra (\) es para concatenar
    }
    
    @IBAction func RegistrarUsuario(_ sender: Any) {
        let email: String = txtEmail.text!
        let password: String = txtPassword.text!
        let Usuario:Usuario = Usuario(email:email, password:password)
        listaUsuarios.append(Usuario)
        print("Email: \(email) Password: \(password)")
    }
    
}

