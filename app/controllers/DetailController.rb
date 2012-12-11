# -*- encoding: utf-8 -*-

class DetailController < UIViewController
  VIEW_TAG_IMAGE = 1
  
  attr_accessor :image_url
  
  def viewDidLoad
    puts 'detail loaded'
    
    image_data = NSData.dataWithContentsOfURL(NSURL.URLWithString(image_url))
    
    @image = view.viewWithTag(VIEW_TAG_IMAGE)
    @image.initWithImage(UIImage.imageWithData(image_data))
  end
end
