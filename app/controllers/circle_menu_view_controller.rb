# //
# //  CircleMenuViewController.m
# //  KYCircleMenuDemo
# //
# //  Created by Kjuly on 7/18/12.
# //  Copyright (c) 2012 Kjuly. All rights reserved.
# //


class CircleMenuViewController < KYCircleMenu

  def init
    if super.init
      self.setTitle("Circle Menu")
    end
  end

  def viewDidLoad
    super viewDidLoad
    self.menu.subviews.each do |btn|
      btn.setAlpha(0.95) if btn.isKindOfClass(UIButton)
    end
  end

  def runButtonActions(sender)
    super.runButtonActions(sender)
    viewController = UIViewController.alloc.init
    viewController.view.setBackgroundColor(UIColor.blackColor)
    viewController.setTitle(NSString.stringWithFormat("View#{sender.tag}"))
    self.pushViewController(viewController)
  end


end
