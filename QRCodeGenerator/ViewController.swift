//
//  ViewController.swift
//  QRCodeGenerator
//
//  Created by AcePlus101 on 1/21/19.
//  Copyright © 2019 AcePlus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var qrCodeView1: UIImageView!
    
    @IBOutlet weak var qrCodeView2: UIView!
    
    @IBOutlet weak var tfInputData: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onClickGenerateButton(_ sender: UIButton) {
        guard let inputData = tfInputData.text else {
            return
        }
        let qrCodeImage = Utils.init().generateQRCode(data: inputData)
        qrCodeView1.image = qrCodeImage
        
        let frame = CGRect(origin: .zero, size: .init(width: 208, height: 208))
        let view = QRCodeView(frame: frame)
        view.generateCode(inputData,
                          foregroundColor: UIColor(red:1.00, green:0.02, blue:0.35, alpha:1.00),
                          backgroundColor: UIColor(red:1.00, green:0.82, blue:0.86, alpha:1.00))
        
        self.qrCodeView2.addSubview(view)
    }
    
}

