json.array! @people do |person|
  json.id person.id
  json.name person.name
  json.gift person.gift
  json.description person.description
  json.email person.email
end