class Inscripcion < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :inscribible, :polymorphic => true
  attr_accessible :estado
end
