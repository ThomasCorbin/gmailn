
module Notifier

  class Notifier
    attr_accessor :platform, :platform_notifier

    def initilize
      @platform_notifier = :linux
    end

    def platform=( new_platform )
      case new_platform
        when :linux
          @platform_notifier = LinuxNotifier.new

        when :mac
          @platform_notifier = MacNotifier.new

        when :cygwin
          @platform_notifier = CygwinNotifier.new

        when :windows
          @platform_notifier = WindowsNotifier.new
      end
    end
  end

end

