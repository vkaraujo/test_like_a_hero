class User < ApplicationRecord
  enum kind: [ :knight, :wizard ]
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 99 }

  def title
    "#{self.kind} #{self.nickname} ##{self.level}"
  end

end
