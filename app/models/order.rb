class Order < ApplicationRecord
  # autosave
  # If the :autosave option is not present, then new associated objects will be saved, but updated associated objects will not be saved.
  # belongs_to :customer, -> { } do |owner|
  #   define_method "#{reflection.name}_exists?" do
  #     association(reflection.name).scope.exists?
  #   end
  # end

  # belongs_to :foo_customer, -> { puts caller_locations; select :id }, class_name: "Customer", foreign_key: 'customer_id'

  module ExtendOrderAssociation
    def customer_exists?
      exists?
    end
  end
  belongs_to :customer, -> { extending ExtendOrderAssociation }, :primary_key => :foo
  belongs_to :readonly_customer, -> { readonly }, class_name: 'Customer', foreign_key: 'customer_id'

  # def customer_exists?
  #   association(:customer).scope.exists?
  # end

  # If you set the :autosave option to true, Rails will save changes made to the loaded association first and also it will destroy the associated object first if it is marked for destruction whenever you save the parent object.
  # belongs_to :customer, autosave: true

  # self.belongs_to_required_by_default = false
  # Order._save_callbacks.send(:chain).map(&:raw_filter)
  # belongs_to :customer, autosave: false

  validate do |customer|
    puts ":validate event for #{customer}"
  end

  before_save do |customer|
    puts ":save event for #{customer}"
  end

  after_destroy do |order|
    puts ":after_destroy is called"
  end

  after_commit do |order|
    puts ":after_commit is called"
  end
end