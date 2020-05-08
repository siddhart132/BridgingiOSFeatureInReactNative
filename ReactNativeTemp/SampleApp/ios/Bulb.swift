//
//  Bulb.swift
//  LightApp
//
//  Created by Abhishek Nalwaya on 31/12/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

@objc(Bulb)
class Bulb: NSObject {
  @objc
  static var isOn = false
  
  @objc
  func turnOn() {
    Bulb.isOn = true
    print("Bulb is now ON")
     let alertView = UIAlertController(title: "Alert" , message: "iOS Alert view is presented in React Native.", preferredStyle: .alert)
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)? .window.rootViewController? .present(alertView, animated:true, completion: nil );
    }
  }
  
  @objc
  func turnOff() {
    Bulb.isOn = false
    print("Bulb is now OFF")
  }
  
  @objc
  func getStatus(_ callback: RCTResponseSenderBlock) {
    callback([NSNull(), Bulb.isOn])
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
