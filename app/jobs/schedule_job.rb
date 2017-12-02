class ScheduleJob < ApplicationJob
  queue_as :emails
  
  def perform(schedule)
    SchedulingMailer.notice(schedule).deliver_now
  end
end
