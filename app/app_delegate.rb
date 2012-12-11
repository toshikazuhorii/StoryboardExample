class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    
    @storyboard = UIStoryboard.storyboardWithName('StoryboardExample', bundle:nil)
    
    @window.rootViewController = @storyboard.instantiateViewControllerWithIdentifier('TopTab')
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    
    true
  end
end
