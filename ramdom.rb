# 順序がバラバラなユーザーの配列
users = %w[A B C D E F].shuffle

# ランダムに2:4か3:3に切るための変数
slice_position = [1, 2].sample

# 二つのgroupに分けて、配列に格納
groups = users.partition.with_index { |_, index| index <= slice_position }

groups.each do |group|
  ## それぞれのgroupをsortして表示
  pp group.sort
end
