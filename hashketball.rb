def game_hash
 game_hash = {
   home: {
   team_name: "Brooklyn Nets",
   colors: ["Black", "White"],
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
   team_name: "Charlotte Hornets",
   colors: ["Turquoise", "Purple"],
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

def num_points_scored(player_name)
  game_hash.each do |team_origin, team_players|
    points_scored = team_players[:players][player_name]
   return points_scored[:points] if points_scored
 end
end

def shoe_size(player_name)
  game_hash.each do |team_origin, team_players|
    player_size = team_players[:players][player_name]
    return player_size[:shoe] if player_size
  end
end

def team_colors(team)
  game_hash.each do |team_origin, team_detail|
  return game_hash[team_origin][:colors] if team_detail[:team_name] == team
 end
end

def team_names
  teams = []
  game_hash.each do |team_origin, team_detail| 
   teams << team_detail[:team_name]
 end
 teams
end

def player_numbers(team_name)
  jerseys = []
  game_hash.each do |team_origin, team_detail|
    team_detail[:players].each do |player, stats| 
    if team_detail[:team_name] == team_name
    jerseys << team_detail[:players][player][:number]
   end
   end
  end
  jerseys
end

def player_stats(player_name)
  game_hash.each do |team_origin, team_players|
    player = team_players[:players][player_name]
    return player if player 
  end
end

# def big_shoe_rebounds
#   game_hash.each do |team_origin, team_players|
#   largest_shoe = []
#   if team_players[:player][:shoe] > team_players[:player][:shoe] 
#   largest_shoe << player[:rebounds]
#   end
# end
# largest_shoe
# end

def big_shoe_rebounds
    largest_shoe = 0
    rebounds = 0
    player = ""
    game_hash.each do |origin, team|
        team[:players].each do |name, stats|
            if largest_shoe < shoe_size(name)
                largest_shoe = shoe_size(name)
                player = name
            end
        end
    end
    return player_stats(player)[:rebounds]
end
