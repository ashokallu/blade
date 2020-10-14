class Customer < ApplicationRecord
  has_many :orders

  # has_many :orders, autosave: false
  # has_many :orders, autosave: true

  # has_one :pinned_content, dependent: :destroy
  # has_one :pinned_content_stat, -> { where(status: ContentStat::Status::PUBLIC) }, through: :pinned_content, source: :content_stat

  # # The :pinned_content_stat association is a has_one association, and it can be nil if a user does
  # # not have a pinned content yet, so #try method is used.
  # def pinned_post
  #   pinned_content_stat.try(:content)
  # end
end