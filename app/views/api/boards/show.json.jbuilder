json.merge! @board.attributes

json.lists(@board.lists) do |list|
  json.merge! list.attributes

  json.cards(list.cards) do |card|
    json.id card.id
    json.title card.title
    json.description card.description
    json.position card.position
    json.labels card.labels
    json.due_date card.due_date
    json.list_id card.list_id
    json.board_id card.board_id
  end
end
