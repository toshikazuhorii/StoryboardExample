# -*- encoding: utf-8 -*-

class ConfigController < UIViewController
  VIEW_TAG_TEXT = 1
  VIEW_TAG_BUTTON = 2
  
  def viewDidLoad
    puts 'config loaded'
    
    @label = view.viewWithTag(VIEW_TAG_TEXT)
    
    @button = view.viewWithTag(VIEW_TAG_BUTTON)
    @button.addTarget(
      self,
      action:'onButtonClicked',
      forControlEvents:UIControlEventTouchUpInside
    )
  end
  
  def onButtonClicked
    @label.text = Time.now.strftime('%Y/%m/%d %H:%M:%S')
  end
end
