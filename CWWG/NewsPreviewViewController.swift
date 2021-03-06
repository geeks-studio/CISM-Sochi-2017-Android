//
//  NewsPreviewViewController.swift
//  CWWG
//
//  Created by Alexander Zimin on 18/01/2017.
//  Copyright © 2017 CWWG Team. All rights reserved.
//

import UIKit
import Nuke

class NewsPreviewViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  var currentNews: NewsEntity!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.estimatedRowHeight = 44.0
    tableView.rowHeight = UITableViewAutomaticDimension
    
    NetworkRequestsController.requestNewsInfo(id: currentNews.id) { [weak self] (success) in
      if success {
        self?.tableView.reloadData()
      }
    }
  }
  
}

extension NewsPreviewViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.row == 0 { // Header
      let cell = tableView.dequeueReusableCell(for: indexPath) as NewsFeedImageTableViewCell
      
      if currentNews.isWithImage {
        Nuke.loadImage(with: URL(string: currentNews.imageURL!)!, into: cell.newsImageView)
      } else {
        cell.gradientImageView.image = nil
        cell.gradientImageView.backgroundColor = AppColor.emptyHeaderBlue
      }
      
      cell.newsDescriptionLabel.text = currentNews.title
      cell.newsTimeLabel.text = currentNews.timeString
      
      return cell
    } else {
      let cell = tableView.dequeueReusableCell(for: indexPath) as DescriptionTableViewCell
      
      let text = currentNews.text ?? ""
      
//      let data = text.data(using: String.Encoding.unicode)
//      if let data = data {
//        do {
//          let attributedString = try NSAttributedString(data: data, options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType], documentAttributes: nil)
//          cell.newsDescriptionLabel.attributedText = attributedString
//        }
//        catch { }
//      }
      
      cell.newsDescriptionLabel.text = text
      cell.updateCellPosition(at: indexPath, inside: tableView)
      
      return cell
    }
  }
}
