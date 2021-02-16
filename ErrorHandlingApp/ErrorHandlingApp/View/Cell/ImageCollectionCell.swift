//
//  ImageCollectionCell.swift
//  ErrorHandlingApp
//
//  Created by Valery Shel on 14.02.2021.
//

import UIKit
import SDWebImage

class ImageCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView! 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
    }
    
    
    func setupCell(image: ImagesRealData){
        
        guard let imageURL = image.href else { return }
        
        print(imageURL)
    
        self.imageView?.sd_setImage(with: URL(string: imageURL), placeholderImage: UIImage(named: "default.png"), options: SDWebImageOptions(), completed: { (image, error, cacheType, imageURL) -> Void in
            print("loaded from internet")
        })
    }
}
