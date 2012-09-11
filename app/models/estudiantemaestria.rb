class Estudiantemaestria < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :estudiante
  belongs_to :maestria
  belongs_to :pensum
  attr_accessible :estado, :carpeta 
end
