//
//  NewsFeedViewController.swift
//  CWWG
//
//  Created by Alexander Zimin on 18/01/2017.
//  Copyright © 2017 CWWG Team. All rights reserved.
//

import UIKit

class NewsFeedViewController: UIViewController {
  
  var news: [NewsRuntimeEntity] = []
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.estimatedRowHeight = 44.0
    tableView.rowHeight = UITableViewAutomaticDimension
    
    news = NewsRuntimeEntity.testData()
    
    RouterController.shared.baseNavigationController = self.navigationController
  }
  
  @IBAction func openMenuButtonAction(_ sender: UIBarButtonItem) {
    let menuViewController = ViewControllersFactory.menuViewController
    self.present(menuViewController, animated: true, completion: nil)
  }
  
  
}

extension NewsFeedViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return news.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let currentNews = news[indexPath.row]
    
    if currentNews.isWithImage {
      let cell = tableView.dequeueReusableCell(for: indexPath) as NewsFeedImageTableViewCell
      
      let currentNews = news[indexPath.row]
      cell.newsDescriptionLabel.text = currentNews.name
      cell.newsTimeLabel.text = currentNews.timeString
      
      return cell
    } else {
      let cell = tableView.dequeueReusableCell(for: indexPath) as NewsFeedPlainTableViewCell
      
      cell.newsDescriptionLabel.text = currentNews.name
      cell.newsTimeLabel.text = currentNews.timeString
      
      if indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1 { // If last
        cell.position = .bottom
      } else if indexPath.row == 0 { // If first
        cell.position = .top
      } else {
        cell.position = .normal
      }
      
      return cell
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? NewsPreviewViewController, let indexPath = sender as? IndexPath {
      let currentNews = news[indexPath.row]
      destination.currentNews = currentNews
    }
    
  }
}

extension NewsFeedViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    self.performSegue(withIdentifier: "Preview", sender: indexPath)
  }
}
