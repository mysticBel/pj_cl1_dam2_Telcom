//
//  ViewController.swift
//  CL1_Dam2_Maza
//
//  Created by Maribel on 29/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblCliente: UITextField!
    @IBOutlet weak var lblDni: UITextField!
    @IBOutlet weak var lblServicio: UITextField!
    //
    @IBOutlet weak var lblCostoServicio: UILabel!
    @IBOutlet weak var lblCostoInstalacion: UILabel!
    @IBOutlet weak var lblCostoDescuento: UILabel!
    //
    @IBOutlet var lblCostoTotal: UIView!
    @IBOutlet weak var imgServicio: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnCalcular(_ sender: UIButton) {
    }
}

