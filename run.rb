Bullet.enable = true
Bullet.raise = true
Bullet.profile do
  m1 = M1.create!
  m2 = M2.create!
  m1_m2 = M1M2.create!(m1:, m2:)

  m3 = M3.new
  m3.m1_m2 = m1.m1_m2s.find_by!(m2:)

  puts M1M2.where(m2:).includes(:m1).index_by { |m1_m2| m1_m2.m1.id }
end
