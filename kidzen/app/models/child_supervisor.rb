#Supervisor Child relationship model.
#Authors: Ahmed H. Ismail
class ChildSupervisor < ActiveRecord::Base
  belongs_to :child, foreign_key: 'child_id'
  belongs_to :supervisor, foreign_key: 'supervisor_id'
end
