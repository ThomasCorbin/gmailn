Given /^I create a notifier$/ do
  @notifier = Notifier::Notifier.new
end

Given /^the plaform is "([^"]*)"$/ do |platform|
  @notifier.platform = platform.to_sym
end

When /^I check the platform notifier$/ do
  @platform_notifier = @notifier.platform_notifier
end

#Then /^My notifier should have "([^"]*)"$/ do |platform|
#  @platform_notifier.class.should == Notifier::LinuxNotifier
#end

Then /^My notifier should be "([^"]*)"$/ do |desired_notifier|
  @platform_notifier.class.name.should == desired_notifier
end




When /^I pass the notifier a notification$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the platform notifier should get the notification$/ do
  pending # express the regexp above with the code you wish you had
end

