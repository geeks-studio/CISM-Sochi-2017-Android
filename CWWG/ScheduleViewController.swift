//
//  ScheduleViewController.swift
//  CWWG
//
//  Created by Alexander Zimin on 18/01/2017.
//  Copyright © 2017 CWWG Team. All rights reserved.
//

import UIKit
import RealmSwift

class ScheduleViewController: UIViewController, UpdateLanguageNotificationObserver {
  
  @IBOutlet weak var tableView: UITableView!
  
  var events: Results<EventEntity>?
  var eventDays: [String] = EventEntity.eventDays()
  
  @IBOutlet weak var monthLabel: UILabel!
  @IBOutlet weak var calendarStackView: UIStackView!
  
  var selectedCell: CalendarCellView? {
    didSet {
      oldValue?.isSelected = false
      selectedCell?.isSelected = true
    }
  }
  var selectedIndex: Int = 0 {
    didSet {
      updateCellSelection()
      updateEvents()
    }
  }
  
  func updateCellSelection() {
    let cell = calendarStackView.arrangedSubviews[selectedIndex] as? CalendarCellView
    selectedCell = cell
  }
  
  var isLoaded: Bool = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addMenuButton()
    
    tableView.estimatedRowHeight = 44.0
    tableView.rowHeight = UITableViewAutomaticDimension
    
    NotificationCenter.default.addLanguageChangeObserver(observer: self)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    if isLoaded == false {
      requestEvents()
    }
  }
  
  func requestEvents() {
    NetworkRequestsController.requestEvents { [weak self] (success) in
      if success {
        self?.isLoaded = true
      }
      self?.updateEvents()
    }
  }
  
  func updateLanguage() {
    monthLabel.text = "\(localized(monthAtIndex: 2)) 2017"
    
    self.isLoaded = false
    
    title = Localizations.MenuItem.Schedule
    
    fillCalendar()
    updateEvents()
  }
  
  func updateEvents() {
    let currentDayString = eventDays[selectedIndex]
    events = defaultRealm?.objects(EventEntity.self).filter("dayString == '\(currentDayString)'").sorted(byKeyPath: #keyPath(EventEntity.startDate))
    tableView.reloadData()
  }
  
  func fillCalendar() {
    
    _ = calendarStackView.arrangedSubviews.map({ $0.removeFromSuperview() })
    
    for i in 0..<5 {
      let dayOfWeek = localized(shortDayOfWeekAtIndex: i + 1)
      let day = 23 + i
      
      var image: UIImage? = nil
      if i == 0 {
        image = UIImage(named: "img_icon_flag")
      } else if i == 6 {
        image = UIImage(named: "img_icon_plane")
      }
      
      let cell = CalendarCellView.createCell(dayOfWeekString: dayOfWeek, date: day, image: image)
      calendarStackView.addArrangedSubview(cell)
      
      cell.tag = i
      cell.buttonDidTouchAction = {
        [weak self] cell in
        self?.selectedIndex = cell.tag
      }
    }
    
    updateCellSelection()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? ObjectPreviewViewController, let object = sender as? ObjectRuntimeEntity {
      destination.object = object
    }
  }
}

extension ScheduleViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return events?.count ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let event = events?.safeObject(atIndex: indexPath.row) else {
      assertionFailure("No event at index path: \(indexPath)")
      return UITableViewCell()
    }
    
    let object = ObjectRuntimeEntityContainer.findEntity(by: event.objectId)
    let eventType = event.eventType
    
    let cell = tableView.dequeueReusableCell(for: indexPath) as ScheduleTableViewCell
    
    cell.eventNameLabel.text = event.name
    cell.timeLabel.text = event.timeIntervalString
    
    cell.updateCellPosition(at: indexPath, inside: tableView)
    cell.setupWithPlace(nameString: object?.title ?? "")
    
    cell.timeLabelBackgroundView.backgroundColor = eventType.color
    cell.iconImageView.image = UIImage(named: eventType.imageName)
    
    return cell
  }
}

extension ScheduleViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
    guard let event = events?.safeObject(atIndex: indexPath.row) else { return }
    let object = ObjectRuntimeEntityContainer.findEntity(by: event.objectId)
    
    if let object = object {
      self.performSegue(withIdentifier: "Object", sender: object)
    }
  }
}

