class Weapon < ApplicationRecord
  validates :power_base, numericality: { greater_than_or_equal_to: 3000 }
  validates :power_step, numericality: { equal_to:100 }
  validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 99 }

  def current_power
    (power_base + ((level - 1) * power_step))
  end

  def title
    "#{name} ##{level}"
  end
end
