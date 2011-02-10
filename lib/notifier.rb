
#require 'notifier/notifier'
# require 'notifier/linux_notifier'

# %w{ linux mac windows cygwin doom buuf }.each { |x| require "autotest_notification/#{x}" }
%w{ notifier linux mac cygwin windows}.each { |x| require "notifier/#{x}" }

