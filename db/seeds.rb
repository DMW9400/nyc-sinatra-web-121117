landmarks_list = {
    "Madison Square Guarden" => {
      :year_completed => 1901
    },
    "The big bull outside" => {
      :year_completed => 1995
    },
    "Flatiron School" => {
      :year_completed => 2014
    },
    "Museum Mile" => {
      :year_completed => 1058
    },
    "Subway Station" => {
      :year_completed => 2015
    },
    "Cast Iron" => {
      :year_completed => 1951
    },
    "Shea Stadium" => {
      :year_completed => 1964
    },
    "Flatiron Building" => {
      :year_completed => 1902
    },
    "Brooklyn Bridge" => {
      :year_completed => 1883
    }
  }

landmarks_list.each do |name, landmark_hash|
  p = Landmark.new
  p.name = name
  landmark_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

figure_list = {
    "Billy The Kid" => {
    },
    "Mark Zuckerberg" => {
    },
    "Ada Lovelace" => {
    },
    "Linus Torvalds" => {
    }
  }

figure_list.each do |name, figure_hash|
  p = Figure.new
  p.name = name
  p.save
end


title_list = {
    "The Mayor" => {
    },
    "The Don" => {
    },
    "Mr. President" => {
    }
  }

title_list.each do |name, figure_hash|
  p = Title.new
  p.name = name
  p.save
end

# associations
fig1 = Figure.all[0]
fig2 = Figure.all[1]
fig3 = Figure.all[2]
fig4 = Figure.all[3]

title1 = Title.all[0]
title2 = Title.all[1]
title3 = Title.all[2]

fig1.titles << title1
fig2.titles << title2
fig3.titles << title3
fig4.titles << title1
