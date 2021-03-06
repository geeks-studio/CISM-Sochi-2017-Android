//
// Autogenerated by Laurine - by Jiri Trecak ( http://jiritrecak.com, @jiritrecak )
// Do not change this file manually!
//


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Imports

import Foundation


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Localizations


public struct Localizations {


  public struct MenuItem {

    /// Base translation: Medal table
    public static var Medals : String { return localized(string: "menu-item.medals", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: News
    public static var News : String { return localized(string: "menu-item.news", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Quest
    public static var Quest : String { return localized(string: "menu-item.quest", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Messenger
    public static var Messenger : String { return localized(string: "menu-item.messenger", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: About CISM
    public static var AboutCism : String { return localized(string: "menu-item.about-CISM", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Kinds of Sports & Countries
    public static var Results : String { return localized(string: "menu-item.results", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Broadcast
    public static var Broadcast : String { return localized(string: "menu-item.broadcast", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Objects
    public static var Objects : String { return localized(string: "menu-item.objects", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Schedule
    public static var Schedule : String { return localized(string: "menu-item.schedule", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

  }

  public struct Debug {

    /// Base translation: This section will work from %i February
    public static func ThisPartWouldWork(value1 : Int) -> String {
      return String(format: localized(string: "debug.this-part-would-work", tableName: nil, bundle: Bundle.main, value: "", comment: ""), value1)
    }

  }

  public struct Map {

    /// Base translation: Open in %@
    public static func OpenIn(value1 : String) -> String {
      return String(format: localized(string: "map.open-in", tableName: nil, bundle: Bundle.main, value: "", comment: ""), value1)
    }

    /// Base translation: Map
    public static var Title : String { return localized(string: "map.title", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

  }

  public struct Time {


    public struct Weekday {

      /// Base translation: Monday
      public static var Monday : String { return localized(string: "time.weekday.monday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: Friday
      public static var Friday : String { return localized(string: "time.weekday.friday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: Sunday
      public static var Sunday : String { return localized(string: "time.weekday.sunday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: Tuesday
      public static var Tuesday : String { return localized(string: "time.weekday.tuesday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: Thursday
      public static var Thursday : String { return localized(string: "time.weekday.thursday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: Wednesday
      public static var Wednesday : String { return localized(string: "time.weekday.wednesday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: Saturday
      public static var Saturday : String { return localized(string: "time.weekday.saturday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }


      public struct Short {

        /// Base translation: Mon
        public static var Monday : String { return localized(string: "time.weekday.short.monday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

        /// Base translation: Fri
        public static var Friday : String { return localized(string: "time.weekday.short.friday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

        /// Base translation: Sun
        public static var Sunday : String { return localized(string: "time.weekday.short.sunday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

        /// Base translation: Tue
        public static var Tuesday : String { return localized(string: "time.weekday.short.tuesday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

        /// Base translation: Thu
        public static var Thursday : String { return localized(string: "time.weekday.short.thursday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

        /// Base translation: Wed
        public static var Wednesday : String { return localized(string: "time.weekday.short.wednesday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

        /// Base translation: Sat
        public static var Saturday : String { return localized(string: "time.weekday.short.saturday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      }
    }

    public struct Month {

      /// Base translation: January
      public static var January : String { return localized(string: "time.month.january", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: July
      public static var July : String { return localized(string: "time.month.july", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: June
      public static var June : String { return localized(string: "time.month.june", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: November
      public static var November : String { return localized(string: "time.month.november", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: April
      public static var April : String { return localized(string: "time.month.april", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: December
      public static var December : String { return localized(string: "time.month.december", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: September
      public static var September : String { return localized(string: "time.month.september", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: February
      public static var February : String { return localized(string: "time.month.february", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: August
      public static var August : String { return localized(string: "time.month.august", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: March
      public static var March : String { return localized(string: "time.month.march", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: October
      public static var October : String { return localized(string: "time.month.october", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

      /// Base translation: May
      public static var May : String { return localized(string: "time.month.may", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    }
  }

  public struct ResultSearch {

    /// Base translation: Competition
    public static var Competition : String { return localized(string: "result-search.competition", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Search
    public static var Search : String { return localized(string: "result-search.search", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Sport type
    public static var Sport : String { return localized(string: "result-search.sport", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

  }

  public struct Schedule {

    /// Base translation: Take place:
    public static var TakePlace : String { return localized(string: "schedule.take-place", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

  }

  public struct Results {

    /// Base translation: Place
    public static var Place : String { return localized(string: "results.place", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Country participants
    public static var WhoIs : String { return localized(string: "results.who-is", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Country
    public static var Country : String { return localized(string: "results.country", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Name
    public static var Name : String { return localized(string: "results.name", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Scores
    public static var Score : String { return localized(string: "results.score", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

  }

  public struct TimeManagment {

    /// Base translation: at
    public static var At : String { return localized(string: "time-managment.at", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: In future
    public static var Future : String { return localized(string: "time-managment.future", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Today
    public static var Today : String { return localized(string: "time-managment.today", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: %i minutes ago
    public static func InHour(value1 : Int) -> String {
      return String(format: localized(string: "time-managment.in-hour", tableName: nil, bundle: Bundle.main, value: "", comment: ""), value1)
    }

    /// Base translation: Just now
    public static var Now : String { return localized(string: "time-managment.now", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Yersterday
    public static var Yersteday : String { return localized(string: "time-managment.yersteday", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

  }

  public struct ObjectPreview {

    /// Base translation: What is going on:
    public static var WhatIsGoingOn : String { return localized(string: "object-preview.what-is-going-on", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

    /// Base translation: Сapacity: %i viewers
    public static func Size(value1 : Int) -> String {
      return String(format: localized(string: "object-preview.size", tableName: nil, bundle: Bundle.main, value: "", comment: ""), value1)
    }

  }

  public struct SelectLanguage {

    /// Base translation: Select language
    public static var Title : String { return localized(string: "select-language.title", tableName: nil, bundle: Bundle.main, value: "", comment: "") }

  }
}