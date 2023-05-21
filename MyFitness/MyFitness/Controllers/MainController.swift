//
//  MainController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 21/5/23.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabController = UITabBarController()
        
        let homeView = UINavigationController(rootViewController: DashboardController())
        let workoutView = UINavigationController(rootViewController: WorkoutController())
        let customizeView = UINavigationController(rootViewController: WorkoutCustomizeController())
        let historyView = UINavigationController(rootViewController: WorkoutHistoryController())
        let profileView = UINavigationController(rootViewController: ProfileController())
        
        homeView.title = "Home"
        workoutView.title = "Workout"
        customizeView.title = "Customize"
        historyView.title = "History"
        profileView.title = "Profile"
        
        tabController.setViewControllers([homeView, workoutView, customizeView, historyView, profileView], animated: true)
        
        guard let items = tabController.tabBar.items else { return }
        
        let images = ["house", "figure.strengthtraining.traditional", "slider.horizontal.3", "clock.arrow.circlepath", "person.crop.circle"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabController.modalPresentationStyle = .fullScreen
        
        let appearence = UITabBarAppearance()
        appearence.configureWithOpaqueBackground()
        appearence.backgroundColor = UIColor(red: (244/255.0), green: (246/255.0), blue: (246/255.0), alpha: 1.0)
        tabController.tabBar.standardAppearance = appearence
        tabController.tabBar.scrollEdgeAppearance = appearence
        
        present(tabController, animated: true)
    }
}
