# Users
User.destroy_all
u1 = User.create :email => 'test123@test.com', :password => 'chicken'
u2 = User.create :email => 'alex@hotmail.com', :password => 'chicken'
u3 = User.create :email => 'test1234@hotmail.com', :password => 'chicken'
puts "#{ User.count } users"

Strain.destroy_all
s1 = Strain.create :name => 'E Coli', :mating_type => 'fission', :gm => 'false', :is_child => 'false', :acid_tolerance => 4.5, :ferment_rate => 0.4, :traits => 'gram neg', :image => 'https://media.nationalgeographic.org/assets/photos/250/947/bccaadcd-afa3-4e49-b208-40d78e8aad5b.jpg'
s2 = Strain.create :name => 'S cerevisiae minor', :mating_type => 'alpha', :gm => 'false', :is_child => 'false', :acid_tolerance => 3.8, :ferment_rate => 3, :traits => 'high acid tolerance', :image => 'https://www.researchgate.net/profile/Jan_Schier/publication/221333980/figure/fig2/AS:667611620716552@1536182422722/Examples-of-typical-images-of-yeast-colonies_Q320.jpg'
s3 = Strain.create :name => 'S cerevisiae exiguus', :mating_type => 'alpha', :gm => 'true', :is_child => 'false', :acid_tolerance => 5, :ferment_rate => 2.6, :traits => 'high alchohol tolerance', :image => 'https://www.medical-labs.net/wp-content/uploads/2015/03/Yeast-colonies-on-agar.jpg'
s4 = Strain.create :name => 'S cerevisiae candid', :mating_type => 'a', :gm => 'true', :is_child => 'true', :acid_tolerance => 4.8, :ferment_rate => 2, :traits => 'quick reproduction', :image => 'https://cdn.sciencebuddies.org/Files/623/7/MicroBio_img_009.jpg'
s5 = Strain.create :name => 'Salmonella', :mating_type => 'fission', :gm => 'false', :is_child => 'false', :acid_tolerance => 4.6, :ferment_rate => 0.3, :traits => 'gram neg', :image => 'https://live.staticflickr.com/1037/1417959903_4b06df5b08_o.jpg'
s6 = Strain.create :name => 'Helicobacter', :mating_type => 'fission', :gm => 'false', :is_child => 'false', :acid_tolerance => 4.5, :ferment_rate => 0.4, :traits => 'gram neg', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSW0TglzVIJOM-bqOMAwzfFRzd9s9kJQV-iHQ&usqp=CAU'
s7 = Strain.create :name => 'Fomitopsis palustris', :mating_type => 'tetrapolar', :gm => 'true', :is_child => 'false', :acid_tolerance => 5.8, :ferment_rate => 4.3, :traits => 'cellulolytic', :image => 'https://i.pinimg.com/originals/94/5a/0f/945a0fc27950ae542e17850c3b759aaf.jpg'
puts "#{ Strain.count } strains"

puts "Users and Strains"
u1.strains << s1 << s2 << s3 << s4 << s5 << s6 << s7
u2.strains << s2 << s3 << s4 << s7
u2.strains << s1 << s5 << s6
