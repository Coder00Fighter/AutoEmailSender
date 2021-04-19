class Guest < ApplicationRecord
  def self.to_csv
    sliced_column_names = column_names[1..(column_names.size() - 1)]
    CSV.generate do |csv|
        csv << sliced_column_names
        all.each do |guest|
            csv << guest.attributes.values_at(*sliced_column_names)
        end
    end
  end
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
        guest = find_by(uid: row["uid"]) || new
        guest.attributes = row.to_hash
        guest.save!
    end
  end
  
end