class Task < ActiveRecord::Base
  attr_accessible :name,:completed_at

  def calculate(*arg)
  	@cal ||= {}
    @cal[arg] ||= memo_method(*arg)
  end
  def memo_method(num = 1)
     sleep 0.5
    90 * num
  end
end
