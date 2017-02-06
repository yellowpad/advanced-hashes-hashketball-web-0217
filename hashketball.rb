# Write your code here
def game_hash
  game_hash = {
      home: {
        team_name: "Brooklyn Nets",
        colors: ['Black', 'White'],
        players: {
           "Alan Anderson" => {
            number: 0,
            shoe: 16,
            points: 22,
            rebounds: 12,
            assists: 12,
            steals: 3,
            blocks: 1,
            slam_dunks: 1
          },
           "Reggie Evans" => {
            number: 30,
            shoe: 14,
            points: 12,
            rebounds: 12,
            assists: 12,
            steals: 12,
            blocks: 12,
            slam_dunks: 7
          },
          "Brook Lopez" => {
            number: 11,
            shoe: 17,
            points: 17,
            rebounds: 19,
            assists: 10,
            steals: 3,
            blocks: 1,
            slam_dunks: 15
          },
           "Mason Plumlee" => {
            number: 1,
            shoe: 19,
            points: 26,
            rebounds: 12,
            assists: 6,
            steals: 3,
            blocks: 8,
            slam_dunks: 5
          },
          "Jason Terry" => {
            number: 31,
            shoe: 15,
            points: 19,
            rebounds: 2,
            assists: 2,
            steals: 4,
            blocks: 11,
            slam_dunks: 1
          }
        }
      },
      away: {
        team_name: 'Charlotte Hornets',
        colors: ['Turquoise', 'Purple'],
        players: {
              "Jeff Adrien" => {
            number: 4,
            shoe: 18,
            points: 10,
            rebounds: 1,
            assists: 1,
            steals: 2,
            blocks: 7,
            slam_dunks: 2
          },
          "Bismak Biyombo" => {
            number: 0,
            shoe: 16,
            points: 12,
            rebounds: 4,
            assists: 7,
            steals: 7,
            blocks: 15,
            slam_dunks: 10
          },
          "DeSagna Diop" => {
            number: 2,
            shoe: 14,
            points: 24,
            rebounds: 12,
            assists: 12,
            steals: 4,
            blocks: 5,
            slam_dunks: 5
          },
            "Ben Gordon" => {
            number: 8,
            shoe: 15,
            points: 33,
            rebounds: 3,
            assists: 2,
            steals: 1,
            blocks: 1,
            slam_dunks: 0
          },
          "Brendan Haywood" => {
            number: 33,
            shoe: 15,
            points: 6,
            rebounds: 12,
            assists: 12,
            steals: 22,
            blocks: 5,
            slam_dunks: 12
          }
        }
      }
    }
end

def num_points_scored (player_name)
  pointz = 0
  game_hash.each do | location, details |
    details.each do | team_info, info |
      if team_info == :players
          info.each do | player, stats |
            if player == player_name
                stats.each do |att, val|
                  if att == :points
                    pointz = val
                  end
              end
          end
        end
      end
    end
  end
    return pointz
  end

def shoe_size (player_name)
size = 0
game_hash.each do | location, details |
  details.each do | team_info, info |
    if team_info == :players
        info.each do | player, stats |
          if player == player_name
              stats.each do |att, val|
                if att == :shoe
                  size = val
                end
            end
        end
      end
    end
  end
end
  return size
end


def team_colors(team_name)
game_hash.map do |location, details|
details.map do |team_info, info|
 if info == team_name
  return details[:colors]
end
end
end
end

def team_names
t_names = []
game_hash.map do |location, details|
details.map do |team_info, info|
  if team_info == :team_name
    t_names << info
  end
end
end
return t_names
end

def player_numbers (team_name)
shirt_nums = []
game_hash.map do |location, details|
 details.map do |team_info, info|
   if info == team_name
       details[:players].map do | player, stats |
             stats.each do |att, val|
               if att == :number
               shirt_nums.push(val)
  end
end
end
end
end
end
return shirt_nums
end


def player_stats (player_name)
game_hash.map do | location, details |
details.map do | team_info, info |
  if team_info == :players
      info.map do | player, stats |
        if player == player_name
            return stats
              end
          end
      end
    end
  end
end

def big_shoe_rebounds
  game_hash.map do | location, details |
    details.map do | team_info, info |
      if team_info == :players
          info.map do | player, stats |
               highest_num = 0
               highest = nil
                stats.each do |att, val|
                 if att == :shoe
                  if val >= highest_num
                    highest_num =  val
                    highest = stats[:rebounds]
                  end
              end
            end
            return highest
          end
        end
      end
    end
  end
