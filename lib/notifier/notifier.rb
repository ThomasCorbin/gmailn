
module Notifier

  class Notifier
    attr_accessor :platform, :platform_notifier

    def initilize
      @platform_notifier = :linux
    end

    def platform=( new_platform )
      @platform_notifier = LinuxNotifier.new
    end
  end

end

