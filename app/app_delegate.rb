class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    # // Override point for customization after application launch.

    # // Navigation Controller
    navigationController = UINavigationController.alloc

    # // Circle Menu
    circleMenuViewController = CircleMenuViewController.alloc

    # // Set the cricle menu vc as the root vc
    navigationController.initWithRootViewController(circleMenuViewController)
    navigationController.navigationBar.setBarStyle(UIBarStyleBlackTranslucent)

    # // Setup circle menu with basic configuration
    circleMenuViewController.initWithButtonCount( 6,
                                                  menuSize:280,
                                                  buttonSize:64,
                                                  buttonImageNameFormat:"KYICircleMenuButton%.2d.png" ,
                                                  centerButtonSize:64,
                                                  centerButtonImageName:"KYICircleMenuCenterButton.png",
                                                  centerButtonBackgroundImageName:"KYICircleMenuCenterButtonBackground.png"
                                                  )
    # // Set navigation controller as the root vc
    @window.setRootViewController(navigationController)

    @window.makeKeyAndVisible
    UIApplication.sharedApplication.setStatusBarStyle(UIStatusBarStyleBlackOpaque)
    true
  end
end
