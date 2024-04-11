import SwiftUI
import GoogleSignIn

@main
struct SafeCheckApp: App {
    
    var body: some Scene {
        WindowGroup {
            if UserDefaults.standard.string(forKey: "user_id") != nil {
                MainView()
            } else {
                ContentView()
                    .onOpenURL { url in
                        GIDSignIn.sharedInstance.handle(url)
                    }
            }
        }
    }
}
