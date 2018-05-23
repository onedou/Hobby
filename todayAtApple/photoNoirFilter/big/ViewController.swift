//
//  ViewController.swift
//  big
//
//  Created by 陈燎 on 2018/5/20.
//  Copyright © 2018 陈燎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!

    let noirFilter = CIFilter(name: "CIPhotoEffectNoir")
    let render = CIContext()

    func setUpFilter(){
        let originImage = ImageView.image!

        let ciImage = CIImage(image: originImage)!

        noirFilter?.setValue(ciImage, forKey: kCIInputImageKey)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpFilter()
    }
    
    @IBAction func switchTapped(_ sender: UISwitch) {
        if sender.isOn {
            let filteredImage = noirFilter?.outputImage!
            let renderedImage = render.createCGImage(filteredImage!, from: (filteredImage?.extent)!)!

            ImageView.image = UIImage(cgImage: renderedImage)
        } else {
            ImageView.image = UIImage(named: "123")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

