//
//  Utils.swift
//  QRCodeGenerator
//
//  Created by AcePlus101 on 1/21/19.
//  Copyright © 2019 AcePlus. All rights reserved.
//

import Foundation
import UIKit

class Utils{
    func generateQRCode(data input:String) -> UIImage? {
        let data = input.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                let outputImage = UIImage(ciImage: output)
                return outputImage
            }
        }
        
        return nil
    }}
