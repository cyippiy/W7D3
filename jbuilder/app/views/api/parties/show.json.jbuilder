json.extract! @party, :name, :location
json.guests do
  json.array! @party.guests.each do |guest|
    json.extract! guest, :id, :name, :age, :favorite_color
    json.gifts do json.array! guest.gifts.each do |gift|
        json.extract! gift, :title, :description
      end
    end
  end
end
