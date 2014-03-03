desc "TODO"
	task upl_img: :environment do
		pic_dir
	end

	def pic_dir
		Dir.chdir("img")
		target = Dir.new("#{Dir.pwd}")
		target.entries.each do |unit|
			if unit!='.' && unit!='..'
				if Category.find_by :name => unit
				else
					Category.create(:name => unit)
				end
				pictures=Dir.new(unit)
				pictures.entries.each do |img|
				if img!='.' && img!='..'
					if !Pick.find_by :name => img
						file = File.open("#{unit}/#{img}")
						category=Category.find_by(:name => unit)
						category.picks.create(:name => img,:url=>"img/#{unit}/#{img}", :thumb=>file)
						puts img
					end
				end
			end
		end
	end
end