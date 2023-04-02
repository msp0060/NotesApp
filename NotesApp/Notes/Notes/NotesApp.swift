//
//  NotesApp.swift
//  Notes
//
//  Created by Shane Peek on 4/1/23.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      return true
  }
}

@main
struct NotesApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                    AuthenticatedView {
                      Image(systemName: "number.circle.fill")
                        .resizable()
                        .frame(width: 100 , height: 100)
                        .foregroundColor(Color(.systemPink))
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .clipped()
                        .padding(4)
                        .overlay(Circle().stroke(Color.black, lineWidth: 2))
                      Text("Welcome to Notes")
                        .font(.title)
                      Text("You need to be logged in to use this app.")
                    } content: {
                      ContentView()
                      Spacer()
                    }
                  }
        }
    }
}
