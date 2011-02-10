Given /^I create notifier$/ do
  @notifier = Notifier::Notifier.new
end

Given /^the plaform is "([^"]*)"$/ do |arg1|
  @notifier.platform = :linux
end

When /^I check the platform notifier$/ do
  @platform_notifier = @notifier.platform_notifier
end

Then /^My notifier should have "([^"]*)"$/ do |arg1|
  @platform_notifier.class.should == Notifier::LinuxNotifier
end

