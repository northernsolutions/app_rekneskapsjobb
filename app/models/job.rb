class Job < ActiveRecord::Base
  belongs_to :jobcategory
  belongs_to :jobtype
end
