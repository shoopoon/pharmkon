class Labolatory < ActiveRecord::Base
  attr_accessible :name, :yaku, :yakka, :total

  def department_amount(yaku_or_yakka)
    case yaku_or_yakka
    when User::DEPARTMENT["薬科学科"]
      return self.yakka
    when User::DEPARTMENT["薬学科"]
      return self.yaku
    end
  end
end
