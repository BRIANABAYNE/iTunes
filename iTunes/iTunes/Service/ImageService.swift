//
//  ImageService.swift
//  iTunes
//
//  Created by Briana Bayne on 8/22/23.
//

import UIKit // we need UIKit for image

//
//class ServiceRequestingImageView: UIImageView  {
//
//    func fetchImage(from url: URL) {
//        let request = URLRequest(url: url)
//        perform(request) { [weak self] result in
//            switch result {
//            case .failure:
//                print("Error fetching the image! 📸📸📸")
//            case .success(let imageData):
//                guard let image = UIImage(data: imageData) else {return}
//                DispatchQueue.main.async {
//                    self?.contentMode = .scaleToFill
//                    self?.image = image
//                }
//            }
//        }
//    }
//}
