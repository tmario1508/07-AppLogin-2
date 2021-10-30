//
//  LoginViewController.swift
//  07-AppLogin
//
//  Created by Felipe Hernandez on 22/10/21.
//

import UIKit

class LoginViewController: UIViewController {

    let appDelegate  =  UIApplication.shared.delegate as! AppDelegate
    
    var plist = UserDefaults.standard
    
    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func OnLogin(_ sender: Any) {
        
        /*let usuario  =  txtUsuario.text
        let password  =  txtPassword.text*/
        
        if txtUsuario.text == "" || txtPassword.text == "" {
            //MARK: Crear una alerta
            let alerta = UIAlertController(title: "Campos vacios", message: "Favor de llenar todos los campos", preferredStyle: .alert)
            //MARK: Crear accion para la alerta
            alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {
                (UIAlertAction) in print("Login fail")
            }))
            
            //MARK: Presentar alerta
            present(alerta, animated: true, completion: nil)
        }else {
            validarUsuario()
        
        /*for item in lista {
            
            if usuario == item.usuario && password == item.password {
                plist.set(usuario, forKey: "usuario")
                
                appDelegate.OnLoginSuccess()
            }else {
                //MARK: Crear una alerta
                let alerta = UIAlertController(title: "Login Fail", message: "Usuario y/o contrasena incorrecta", preferredStyle: .alert)
                //MARK: Crear accion para la alerta
                alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {
                    (UIAlertAction) in print("Login fail")
                }))
                
                //MARK: Presentar alerta
                present(alerta, animated: true, completion: nil)
            }*/
            
        }
        
        
    }
    
    
    func validarUsuario() {
        let usuario  =  txtUsuario.text
        let password  =  txtPassword.text
        
        for item in lista {
            
            if usuario == item.usuario && password == item.password {
                plist.set(usuario, forKey: "usuario")
                
                appDelegate.OnLoginSuccess()
            }else {
                //MARK: Crear una alerta
                let alerta = UIAlertController(title: "Login Fail", message: "Usuario y/o contrasena incorrecta", preferredStyle: .alert)
                //MARK: Crear accion para la alerta
                alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {
                    (UIAlertAction) in print("Login fail")
                }))
                
                //MARK: Presentar alerta
                present(alerta, animated: true, completion: nil)
            }
            
        }
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
