//
//  ViewController.swift
//  MultiPartsAlamofire
//
//  Created by Rashid on 24/12/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction private func uploadData(_ sender: UIButton){
        guard let pngData = UIImage(named: "test.image")?.pngData() else {return}
        let data = UploadData(data: pngData, fileName: "profilePic", mimeType: "png", name: "profilePic")
        
        Routes.updateProfile(name: "Rashid", username: "addedasd", gender: "male").send(UploadProfileResponseModel.self, data: data) { (progress) in
            print(progress)
        } then: { (results) in
            switch results {
            case .failure(let error):
                print(error)
            case .success(let values):
                print(values)
            }
        }

    }
}

struct UploadProfileResponseModel: Codable, CodableInit {
    let message: Message
}

// MARK: - Message
struct Message: Codable {
    let success: [String]
}
