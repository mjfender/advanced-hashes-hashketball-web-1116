require "pry"

def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        },
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        },
      }
    }
  }
end

def good_practices
  game_hash.each do |location, team_data|
    #location == :home// team_data == :team_name
    #binding.pry

      team_data.each do |attribute, data|
        # attribute == team_name(string) or colors(array) or players(hash),
        # data == "Brooklyn Nets" or Array of Colors or Hash of Player Names
        #binding.pry

        if data.kind_of?(Hash)
        data.each do |player, stats|
        # Checks to make sure data is a Hash that can be dug into.
        # At this level, stats[:shoe] properly returns a value
            #binding.pry
        end
      end
    end
  end
end
# good_practices

def num_points_scored(name)
  points_scored = ""
  game_hash.each do |location, team_data|
    #location == :home// team_data == :team_name
    #binding.pry

      team_data.each do |attribute, data|
        # attribute == team_name(string) or colors(array) or players(hash),
        # data == "Brooklyn Nets" or Array of Colors or Hash of Player Names
        #binding.pry

        if data.kind_of?(Hash)
        data.each do |player, stats|
          if player == name
            points_scored = stats[:points]
          end
        # Checks to make sure data is a Hash that can be dug into.
        # At this level, stats[:shoe] properly returns a value
            #binding.pry
        end
      end
    end
  end
  points_scored.to_i
  end

def team_colors(name_team)
  # # team_colors = []
  # game_hash.each do |location, team_data|
  # #location == :home// team_data == :team_name
  #
  #     team_data.each do |attribute, data|
  #     # attribute == team_name, data == "Brooklyn Nets"
  #     if data == name_team
  #       #puts "#{attribute[:colors]} and #{attribute[:colors].class}"
  #       team_colors = team_data[:colors]
  #     end
  #   end
  # end
  # team_colors

game_hash.map do |location, team_data |
    if team_data[:team_name] == name_team
      return team_data[:colors]
    end
end
      #team_data.select do
      # ^  attribute: :team_name, team colors, players
      # ^ data:
      #data == "name_team"
end

def shoe_size(player_name)
  shoe_size = 0
  game_hash.each do |location, team_data|
    #location == :home// team_data == :team_name
    #binding.pry

      team_data.each do |attribute, data|
        # attribute == team_name, data == "Brooklyn Nets"
        #binding.pry

        if data.kind_of?(Hash)
        data.each do |player, stats|
          if player == player_name
            shoe_size = stats[:shoe]
          end
        # Checks to make sure data is a Hash that can be dug into.
        # At this level, stats[:shoe] properly returns a value
            #binding.pry
        end
      end
    end
  end
  shoe_size.to_i
  end

def team_names
  tnames = []
  game_hash.each do |location, team_data|
    #location == :home// team_data == :team_name
    #binding.pry

      team_data.each do |attribute, data|
        # attribute == team_name, data == "Brooklyn Nets"
        #binding.pry
        if attribute == :team_name
          tnames.push(data)
        end
      end
    end
  tnames
end

def player_numbers(team_name)
  # takes in an argument of a team name and returns an array of the jersey number's for that team.
  numbers = []
  game_hash.each do |location, team_data|
    #location == :home// team_data == :team_name
    #binding.pry

      team_data.each do |attribute, data|
        # attribute == team_name, data == "Brooklyn Nets"
        #binding.pry
        if data.kind_of?(Hash)
        data.each do |player, stats|
          if team_data[:team_name] == team_name
            numbers.push(stats[:number].to_i)
          end
        # Checks to make sure data is a Hash that can be dug into.
        # At this level, stats[:shoe] properly returns a value
            #binding.pry
        end
      end
    end
  end
  numbers
  end
#  player_numbers("Brooklyn Nets")

def player_stats(player_name)
  # takes in an argument of a player name and returns all stats for that player.
  stats_return = Hash.new
  game_hash.each do |location, team_data|
    #location == :home// team_data == :team_name
    #binding.pry

      team_data.each do |attribute, data|
        # attribute == team_name, data == "Brooklyn Nets"
        #binding.pry
        if data.kind_of?(Hash)
        data.each do |player, stats|
          if player == player_name
            stats_return = stats
          end
        # Checks to make sure data is a Hash that can be dug into.
        # At this level, stats[:shoe] properly returns a value
            #binding.pry
        end
      end
    end
  end
  stats_return
  end

def big_shoe_rebounds
  biggest_shoe = 0
  biggest_player = ""
  #step 1: get the biggest footed player
  game_hash.each do |location, team_data|
    #location == :home// team_data == :team_name
    #binding.pry

      team_data.each do |attribute, data|
        # attribute == team_name, data == "Brooklyn Nets"
        #binding.pry

        if data.kind_of?(Hash)
        data.each do |player, stats|
          if stats[:shoe] > biggest_shoe
            biggest_shoe = stats[:shoe]
            biggest_player = player
            #binding.pry
          end
        # Checks to make sure data is a Hash that can be dug into.
        # At this level, stats[:shoe] properly returns a value
            #binding.pry
        end
      end
    end
  end
# step 2: get the stats
rebounds = 0
game_hash.each do |location, team_data|
  #location == :home// team_data == :team_name
  #binding.pry

    team_data.each do |attribute, data|
      # attribute == team_name, data == "Brooklyn Nets"
      #binding.pry

      if data.kind_of?(Hash)
      data.each do |player, stats|
        if player == biggest_player
          rebounds = stats[:rebounds]
        end
      # Checks to make sure data is a Hash that can be dug into.
      # At this level, stats[:shoe] properly returns a value
          #binding.pry
      end
    end
  end
end
rebounds
end
