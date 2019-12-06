class GameSerializer
    include FastJsonapi::ObjectSerializer
    attributes :board_array, :user_id, :zeroturn
  end