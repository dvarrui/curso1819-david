
require_relative 'config_loader'

class ExecManager

  def initialize(commands_file, hosts_file)
    @data = ConfigLoader.new(commands_file, hosts_file)
  end

  def run
    puts "=" * 50
    print "[MANAGER] running #{Rainbow(@data.commands_file).yellow.bright}"
    puts  " => #{Rainbow(@data.hosts_file).yellow.bright}"

    @data.hosts.each do |host|
      host.info
      host.run_several(@data.commands)
      host.show_output
    end
  end

end
