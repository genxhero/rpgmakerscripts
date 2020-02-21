
#Place this function inside of the game_party class.

  def swap_actors(old_id, new_id)
    ids = members.map {|member| member.id};
    index = ids.index(old_id)
    leftof = members.take(index)
    rightof = members.drop(index + 1)
    puts "Right: #{rightof.map {|guy| guy.id}}"

    @actors = leftof.map {|guy| guy.id} + [new_id] + rightof.map {|guy| guy.id}
    puts "Party: #{battle_members.map{|member| member.id}}"
    $game_player.refresh
    $game_map.need_refresh = true
  end

  #Use this script to call the above function om the script-based 
  #ability that will switch the characters.