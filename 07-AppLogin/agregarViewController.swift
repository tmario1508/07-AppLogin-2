//
//  agregarViewController.swift
//  07-AppLogin
//
//  Created by Felipe Hernandez on 22/10/21.
//

import UIKit

class agregarViewController: UIViewController {

    @IBOutlet weak var txtUsuario: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func onAgregar(_ sender: Any) {
        
        let entidad =  EntidadUsuario(usuario: txtUsuario.text!, password: txtPassword.text!)
        
        lista.append(entidad)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
