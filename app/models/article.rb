class Article < ApplicationRecord
    include Visible
  
    has_many :comments, dependent: :destroy # Si elimina un artículo, sus comentarios asociados también deberán eliminarse, 
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end
  

=begin
    

Las validaciones son reglas que se comprueban antes de guardar un objeto de modelo. 
Si alguna de las comprobaciones falla, se anulará el guardado y se agregarán los mensajes de error correspondientes 
al atributo de errores del objeto modelo.
  
=end