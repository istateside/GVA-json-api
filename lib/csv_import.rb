class CSVImport
  require 'csv'

  def run(filepath)
    lines = CSV.read(filepath)
    if lines.blank?
      puts "CSV is blank."
      return
    end
    lines.shift
    lines.each do |line|
      new_inc = Incident.new(
        date: line[0],
        state: line[1],
        city: line[2],
        address: line[3],
        numKilled: line[4],
        numInjured: line[5]
      )
      
      new_inc.save
    end
  end
end
