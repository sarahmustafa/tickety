set :output, "#{path}/log/cron.log"


every 2.minutes do
  runner "Show.clear_show", :environment => :development
end