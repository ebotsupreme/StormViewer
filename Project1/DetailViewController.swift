//
//  DetailViewController.swift
//  Project1
//
//  Created by Eddie Jung on 7/28/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    var selectedImageIndex: Int?
    var totalImageCount: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        title = selectedImage
        
        title = "Picture \(selectedImageIndex!) of \(totalImageCount!)"
        navigationItem.largeTitleDisplayMode = .never
        
        // Do any additional setup after loading the view.
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
