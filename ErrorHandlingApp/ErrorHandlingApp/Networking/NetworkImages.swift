//
//  NetworkPhoto.swift
//  ErrorHandlingApp
//
//  Created by Valery Shel on 14.02.2021.
//

import UIKit
import SwiftyJSON


final class NetworkImages {
    
    var onDataChanged: (() -> Void)?

    var imageItems = [ImagesRealData]() {
        didSet {
            self.onDataChanged?()
        }
    }
    
    init() {}
    
    func load() {
        
        downloadImagesJSON() { [weak self] result in
            
            guard let self = self else { return }
            
            DispatchQueue.main.async {
                switch result {
                case let .failure(error):
                    print("Downloading failed with error")
                case let .success(imageItems):
                    self.imageItems = imageItems
                }
            }
        }
    }
    

    
    func downloadImagesJSON(completion: @escaping (Result<[ImagesRealData], Error>) -> ()) {
        
        let url =  URL(string: "https://images-api.nasa.gov/search?q=space&media_type=image&year_start=2019&year_end=2019")
        guard let downloadURL = url else { return }
        let session = URLSession.shared
        session.dataTask(with: downloadURL) { data, response, error in
            
            if let response = response {
                print(response )
            }
            
            guard let data = data, error == nil else {
                completion(.failure(error ?? DownloadError.emptyData))
                return
            }
            
            do {
                let json = try JSON(data: data)
                let items = json["collection"]["items"]
                
                var imageItems: [ImagesRealData] = []
                
                print(items)
                
                for item in items.arrayValue {
                    let id = item["id"].intValue
                    let href = item["links"][0]["href"].stringValue
                    
                    imageItems.append(ImagesRealData(id: id, href: href))
                }
                completion(.success(imageItems))
            } catch {
                completion(.failure(error))
                print(error)
            }
        }.resume()
        
    }
}


