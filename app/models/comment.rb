class Comment < ApplicationRecord
  include Visible

  belongs_to :article  #hace que cada comentario pertenezca a un articulo
end



