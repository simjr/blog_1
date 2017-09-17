class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    #el dependent destroy se coloca para decir que los comentarios que dependan del post
    #serán destruidos al borrar un post
    belongs_to :user
end
